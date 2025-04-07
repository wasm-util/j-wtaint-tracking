package wasm.instrument.function.instruction;

import wasm.instrument.function.FunctionScope;
import wasm.instrument.function.InstructionInstrumentType;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.ParametricInstructions;
import wasm.editor.def.type.NumberType;

import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class SelectType implements InstructionInstrumentType {

    @Override
    public void instrument(Instruction instruction, List<Instruction> newInstructions, FunctionScope scope, int shadowOffset) {
        newInstructions.add(createHelperSet(instruction, scope, 0));
        newInstructions.add(createHelperSet(instruction, scope, 1));
        newInstructions.add(createHelperSet(instruction, scope, 2));
        newInstructions.add(createHelperSet(instruction, scope, 3));
        newInstructions.add(new Instruction(ParametricInstructions.DROP)); //drop taint_condition
        newInstructions.add(createHelperTee(instruction, scope, 4));
        newInstructions.add(createHelperGet(instruction, scope, 2));
        newInstructions.add(createHelperGet(instruction, scope, 0));
        newInstructions.add(instruction);
        newInstructions.add(createHelperSet(instruction, scope, 0)); //store result(regular)
        newInstructions.add(createHelperGet(instruction, scope, 4));
        newInstructions.add(createHelperGet(instruction, scope, 3));
        newInstructions.add(createHelperGet(instruction, scope, 1));
        newInstructions.add(instruction);
        newInstructions.add(createHelperGet(instruction, scope, 0)); //{result(taint), result(regular)}
    }

    @Override
    public int getInstructionFlag(Instruction instruction) {
        //assume its i32 for default
        //write about how in future we have problem/inefficiency here if more than 3 operands
        return NumberType.UNINTERPRETED_INT_32;
        /*if (instruction.getArguments().isEmpty()) {
            return NumberType.UNINTERPRETED_INT_32; //default is int32
        } else {
            final ValueType valueType = (ValueType) instruction.getArguments().get(0);
            if (!(valueType.getValueType() instanceof NumberType)) {
                System.err.printf("SelectType: Unsupported value type %s\n", valueType.getValueType());
                return -1;
            }
            return valueType.getFlag();
        }*/
    }

    @Override
    public List<InstructionSignature> getInstructionSignatures() {
        return List.of(ParametricInstructions.SELECT);
    }
}
