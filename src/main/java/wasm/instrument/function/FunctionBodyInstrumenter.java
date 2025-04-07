package wasm.instrument.function;

import wasm.instrument.GlobalInstrumenter;
import wasm.instrument.ValueUtil;
import wasm.editor.def.Index;
import wasm.editor.def.Vector;
import wasm.editor.def.WasmModule;
import wasm.editor.def.instruction.Expression;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionList;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.ControlInstructions;
import wasm.editor.def.instruction.list.VariableInstructions;
import wasm.editor.def.section.type.CodeSection;
import wasm.editor.def.type.FunctionType;
import wasm.editor.def.type.ValueType;
import wasm.editor.def.value.type.Unsigned128LEB32Value;

import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class FunctionBodyInstrumenter {

    public static void fixOperandIndices(final WasmModule module, final FunctionScope scope) throws IOException {
        final CodeSection codeSection = module.getSection(CodeSection.class);
        final CodeSection.Code functionCode = codeSection.getCode().getElements().get(scope.getFunctionIndex());
        fixOperandIndices(functionCode.getFunc().getExpression().getInstructions(), scope);
    }

    public static void fixOperandIndices(final List<Instruction> instructions, final FunctionScope scope) throws IOException {
        for (Instruction instruction : instructions) {
            if (Instruction.equalType(instruction, VariableInstructions.LOCAL_GET, VariableInstructions.LOCAL_SET, VariableInstructions.LOCAL_TEE)) {
                final Unsigned128LEB32Value indexArg = (Unsigned128LEB32Value) instruction.getArguments().get(0);
                final int index = indexArg.get().intValue();
                final FunctionOperand operand = scope.getOperandInstrumentMap().get(index);
                if (operand == null || !operand.equalsFunctionType(FunctionOperandTypes.PARAM, FunctionOperandTypes.LOCAL)) {
                    throw new IOException(String.format("Instruction: %s, Operand: %s, Scope: %s", instruction, operand, scope));
                }
                indexArg.set(BigInteger.valueOf(operand.getOperandIndex()));
            }
        }
    }

    public static Expression createExportedEntryFunctionExpression(final WasmModule module, final int nextFunctionIndex, final FunctionType functionType, final Vector<CodeSection.Local> locals, final List<Integer> taintList) {
        final Expression expression = new Expression();
        final List<Instruction> instructions = new ArrayList<>();
        int index = 0;

        //first load params and taint values
        for (ValueType valueType : functionType.getParameterTypes().getValueTypes().getElements()) {
            instructions.add(new Instruction(VariableInstructions.LOCAL_GET, List.of(Unsigned128LEB32Value.createSimple(index))));
            final InstructionSignature instructionSignature = ValueUtil.getConstInstructionSignature(valueType.getFlag());
            if (taintList != null && taintList.contains(index)) {
                instructions.add(new Instruction(instructionSignature, List.of(ValueUtil.getFullBitsTaintedValue(valueType.getFlag()))));
            } else {
                instructions.add(new Instruction(instructionSignature, List.of(ValueUtil.createSimpleValue(instructionSignature, 0))));
            }
            index++;
        }

        //call new function
        instructions.add(new Instruction(ControlInstructions.CALL_FUNC, List.of(new Index(nextFunctionIndex))));

        //for every result, add global to store taint and helper local to store real value
        int resultIndex = 0;
        for (ValueType valueType : functionType.getResultTypes().getValueTypes().getElements()) {
            final int globalIndex = GlobalInstrumenter.addResultGlobal(module, valueType.getFlag(), nextFunctionIndex, resultIndex++);
            instructions.add(new Instruction(VariableInstructions.GLOBAL_SET, List.of(Unsigned128LEB32Value.createSimple(globalIndex))));

            final CodeSection.Local local = FunctionFrameInstrumenter.createSingleLocal(valueType.getFlag());
            locals.getElements().add(local);
            instructions.add(new Instruction(VariableInstructions.LOCAL_SET, List.of(Unsigned128LEB32Value.createSimple(index))));
            index++;
        }

        //at last, push real values to stack again
        for (int i = 1; i <= locals.getElements().size(); i++) {
            final int localIndex = index - i;
            instructions.add(new Instruction(VariableInstructions.LOCAL_GET, List.of(Unsigned128LEB32Value.createSimple(localIndex))));
        }

        //end instruction
        instructions.add(new Instruction(InstructionList.END_INSTRUCTION));
        expression.setInstructions(instructions);
        return expression;
    }
}
