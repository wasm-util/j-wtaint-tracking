package wasm.instrument;

import wasm.editor.def.Index;
import wasm.editor.def.WasmModule;
import wasm.editor.def.instruction.Expression;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionList;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.ControlInstructions;
import wasm.editor.def.instruction.list.VariableInstructions;
import wasm.editor.def.section.type.CodeSection;
import wasm.editor.def.section.type.GlobalSection;
import wasm.editor.def.type.GlobalType;
import wasm.editor.def.type.ValueType;
import wasm.editor.def.value.type.Unsigned128LEB32Value;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class GlobalInstrumenter {

    public static HashMap<Integer, Integer> cloneTaintGlobals(final WasmModule module) {
        //check first which globals are actually used
        final List<Integer> traversedFunctions = new ArrayList<>();
        final CodeSection codeSection = module.getSection(CodeSection.class);
        final List<Integer> globalList = new ArrayList<>();
        final HashMap<String, Integer> exportedFunctions = MetaDataInstrumenter.getFuncRefValues(module);
        for (int functionIndex : exportedFunctions.values()) {
            traverseFunction(functionIndex, codeSection.getCode().getElements(), traversedFunctions, globalList);
        }

        final HashMap<Integer, Integer> globalMap = new HashMap<>();
        final List<GlobalSection.Global> globals = module.getSection(GlobalSection.class).getGlobals().getElements();
        globalList.forEach(index -> {
            final GlobalSection.Global global = globals.get(index);
            final List<Instruction> instructions = global.getExpression().getInstructions();
            //only clone globals that are mutable, since taint won't propagate through immutable globals
            if (global.getGlobalType() != null && !instructions.isEmpty()
                    && global.getGlobalType().getMut().getFlag() == GlobalType.Mut.MUTATABLE) {
                final Instruction instruction = instructions.get(0);
                if (!instruction.getArguments().isEmpty()) {
                    final InstructionSignature instructionSignature = ValueUtil.getNumericSignature(instruction.getArguments().get(0));
                    if (instructionSignature != null) {
                        globalMap.put(index, globals.size());
                        globals.add(createSimpleGlobal(global.getGlobalType(), instructionSignature));
                    } else {
                        System.err.printf("Unsupported instruction arg type %s\n", instruction.getArguments().get(0));
                    }
                } else {
                    System.err.printf("Unsupported global ref for cloning global %d\n", index);
                }
            }
        });
        return globalMap;
    }

    private static void traverseFunction(final int function, final List<CodeSection.Code> functions, final List<Integer> traversedFunctions, final List<Integer> globalList) {
        if (traversedFunctions.contains(function)) {
            return;
        }
        traversedFunctions.add(function);
        final List<Instruction> instructions = functions.get(function).getFunc().getExpression().getInstructions();
        int index = 0;
        while (index < instructions.size()) {
            final Instruction instruction = instructions.get(index);
            if (InstructionList.END_INSTRUCTION.equals(instruction.getSignature())) {
                return;
            }
            if (Instruction.equalType(instruction, VariableInstructions.GLOBAL_SET, VariableInstructions.GLOBAL_GET)) {
                final int globalIndex = Unsigned128LEB32Value.getSimpleInt(instruction.getArguments().get(0));
                if (!globalList.contains(globalIndex)) {
                    globalList.add(globalIndex);
                }
            } else if (Instruction.equalType(instruction, ControlInstructions.CALL_FUNC)) {
                final int functionIndex = ((Index) instruction.getArguments().get(0)).getValue();
                traverseFunction(functionIndex, functions, traversedFunctions, globalList);
            }
            index++;
        }
    }

    public static int addResultGlobal(final WasmModule module, final Integer numberFlag, int functionIndex, int resultIndex) {
        final List<GlobalSection.Global> globals = module.getSection(GlobalSection.class).getGlobals().getElements();
        final GlobalType globalType = new GlobalType();
        final GlobalType.Mut mut = new GlobalType.Mut();
        mut.setFlag(GlobalType.Mut.MUTATABLE);
        globalType.setMut(mut);
        final ValueType valueType = new ValueType();
        valueType.setValuesByFlag(numberFlag);
        globalType.setValType(valueType);
        globals.add(createSimpleGlobal(globalType, ValueUtil.getConstInstructionSignature(numberFlag)));
        final int index = globals.size() - 1;
        final HashMap<String, Integer> exportedGlobals = MetaDataInstrumenter.getGlobalRefValues(module);
        exportedGlobals.put("taint_result_" + functionIndex + "_" + resultIndex, index);
        MetaDataInstrumenter.modifyGlobalRefValues(module, exportedGlobals);
        return index;
    }

    private static GlobalSection.Global createSimpleGlobal(final GlobalType globalType, InstructionSignature instructionSignature) {
        final GlobalSection.Global newGlobal = new GlobalSection.Global();
        newGlobal.setGlobalType(globalType);
        final Expression expression = new Expression();
        final Instruction newInstruction = new Instruction(instructionSignature, List.of(ValueUtil.createSimpleValue(instructionSignature, 0)));
        final Instruction endInstruction = new Instruction(ControlInstructions.END);
        expression.setInstructions(List.of(newInstruction, endInstruction));
        newGlobal.setExpression(expression);
        return newGlobal;
    }
}
