package wasm.instrument.function;

import wasm.instrument.function.instruction.*;
import wasm.editor.def.Index;
import wasm.editor.def.TypeAble;
import wasm.editor.def.Vector;
import wasm.editor.def.WasmModule;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.ControlInstructions;
import wasm.editor.def.instruction.list.VariableInstructions;
import wasm.editor.def.instruction.type.BlockArgumentType;
import wasm.editor.def.section.type.CodeSection;
import wasm.editor.def.value.type.Unsigned128LEB32Value;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class InstructionInstrumenter {

    private static final HashMap<InstructionSignature, InstructionInstrumentType> INSTRUMENT_TYPES = new HashMap<>();

    static {
        addInstrumentType(new ConditionalBranchType());
        addInstrumentType(new ConstantType());
        addInstrumentType(new DoubleOperandArithmeticType());
        addInstrumentType(new DropType());
        addInstrumentType(new ReturnCallerType());
        addInstrumentType(new SelectType());
        addInstrumentType(new SingleOperandArithmeticType());
        addInstrumentType(new StackLoadType());
        addInstrumentType(new StackStoreType());
    }

    public static void instrumentTaintIntoFunctions(final WasmModule module, final int shadowOffset, final HashMap<Integer, Integer> globalMap, final HashMap<Integer, FunctionScope> functionMap) throws IOException {
        final CodeSection codeSection = module.getSection(CodeSection.class);
        for (FunctionScope scope : functionMap.values()) {
            final CodeSection.Code functionCode = codeSection.getCode().getElements().get(scope.getFunctionIndex());
            final List<Instruction> instructions = functionCode.getFunc().getExpression().getInstructions();
            if (instructions.size() <= 1) {
                continue;
            }
            final List<Instruction> newInstructions = new ArrayList<>();
            instrumentTaintIntoInstructions(instructions, newInstructions, shadowOffset, globalMap, functionMap, scope);
            functionCode.getFunc().getExpression().setInstructions(newInstructions);

            //add new locals
            final Vector<CodeSection.Local> locals = functionCode.getFunc().getLocals().getDuplicate();
            for (FunctionOperand operand : scope.getNextHelperLocals()) {
                locals.getElements().add(FunctionFrameInstrumenter.createSingleLocal(operand.getNumberTypeFlag()));
            }
            functionCode.getFunc().setLocals(locals);
        }
    }

    private static void instrumentTaintIntoInstructions(final List<Instruction> instructions, final List<Instruction> newInstructions, final int shadowOffset, final HashMap<Integer, Integer> globalMap, final HashMap<Integer, FunctionScope> functionMap, final FunctionScope scope) throws IOException {
        for (Instruction instruction : instructions) {
            if (Instruction.equalType(instruction, ControlInstructions.BLOCK, ControlInstructions.LOOP)) {
                final BlockArgumentType blockArgumentType = (BlockArgumentType) instruction.getArguments().get(0);
                final List<Instruction> blockInstructions = blockArgumentType.getInnerExpression().getInstructions();
                final List<Instruction> newBlockInstructions = new ArrayList<>();
                //fix operands first, then instrument into block
                FunctionBodyInstrumenter.fixOperandIndices(blockInstructions, scope);
                instrumentTaintIntoInstructions(blockInstructions, newBlockInstructions, shadowOffset, globalMap, functionMap, scope);

                blockArgumentType.getInnerExpression().setInstructions(newBlockInstructions);
                newInstructions.add(instruction);
            } else if (Instruction.equalType(instruction, ControlInstructions.CALL_FUNC)) {
                final FunctionScope otherScope = functionMap.get(((Index) instruction.getArguments().get(0)).getValue());
                if (otherScope == null) {
                    throw new IOException(String.format("Incorrect initial call function for scope %s", scope));
                }
                newInstructions.add(new Instruction(ControlInstructions.CALL_FUNC, List.of(new Index(otherScope.getFunctionIndex()))));
            } else if (Instruction.equalType(instruction, VariableInstructions.GLOBAL_GET, VariableInstructions.GLOBAL_SET)) {
                final int globalIndex = Unsigned128LEB32Value.getSimpleInt(instruction.getArguments().get(0));
                if (!globalMap.containsKey(globalIndex)) {
                    throw new IOException(String.format("Incorrect initial global variable index %d for scope %s", globalIndex, scope));
                }
                final Instruction taintInstruction = new Instruction(instruction.getSignature(), List.of(Unsigned128LEB32Value.createSimple(globalMap.get(globalIndex))));
                if (Instruction.equalType(instruction, VariableInstructions.GLOBAL_GET)) {
                    newInstructions.add(instruction);
                    newInstructions.add(taintInstruction);
                } else {
                    newInstructions.add(taintInstruction);
                    newInstructions.add(instruction);
                }
            } else if (Instruction.equalType(instruction, VariableInstructions.LOCAL_GET, VariableInstructions.LOCAL_SET, VariableInstructions.LOCAL_TEE)) {
                final int index = Unsigned128LEB32Value.getSimpleInt(instruction.getArguments().get(0));
                final int taintIndex = scope.getTaintIndex(index);
                if (taintIndex == -1) {
                    throw new IOException(String.format("Unknown taint index %d for instruction %s", index, instruction.getSignature()));
                }
                final List<TypeAble> arguments = List.of(Unsigned128LEB32Value.createSimple(taintIndex));
                if (Instruction.equalType(instruction, VariableInstructions.LOCAL_GET)) {
                    newInstructions.add(instruction);
                    newInstructions.add(new Instruction(instruction.getSignature(), arguments));
                } else if (Instruction.equalType(instruction, VariableInstructions.LOCAL_SET)) {
                    newInstructions.add(new Instruction(instruction.getSignature(), arguments));
                    newInstructions.add(instruction);
                } else if (Instruction.equalType(instruction, VariableInstructions.LOCAL_TEE)) {
                    newInstructions.add(new Instruction(VariableInstructions.LOCAL_SET, arguments));
                    newInstructions.add(instruction);
                    newInstructions.add(new Instruction(VariableInstructions.LOCAL_GET, arguments));
                }
            } else if (Instruction.equalType(instruction, ControlInstructions.END)) {
                newInstructions.add(instruction);
            } else {
                instrumentTaintInstruction(instruction, newInstructions, scope, shadowOffset);
            }
        }
    }

    private static void instrumentTaintInstruction(final Instruction instruction, final List<Instruction> newInstructions, final FunctionScope scope, final int shadowOffset) throws IOException {
        if (INSTRUMENT_TYPES.containsKey(instruction.getSignature())) {
            final InstructionInstrumentType instrumentType = INSTRUMENT_TYPES.get(instruction.getSignature());
            instrumentType.instrument(instruction, newInstructions, scope, shadowOffset);
        } else {
            throw new IOException(String.format("InstructionInstrumenter: Unhandled instruction %s", instruction));
        }
    }

    private static void addInstrumentType(final InstructionInstrumentType instrumentType) {
        for (InstructionSignature signature : instrumentType.getInstructionSignatures()) {
            if (INSTRUMENT_TYPES.containsKey(signature)) {
                System.err.printf("InstructionInstrumenter: Overwriting signature %s to %s from %s\n", signature, instrumentType.getClass().getSimpleName(), INSTRUMENT_TYPES.get(signature).getClass().getSimpleName());
            }
            INSTRUMENT_TYPES.put(signature, instrumentType);
        }
    }
}
