package wasm.instrument.function.instruction;

import wasm.instrument.function.FunctionScope;
import wasm.instrument.function.InstructionInstrumentType;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.NumericOperationInstructions;
import wasm.editor.def.type.NumberType;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class DoubleOperandArithmeticType implements InstructionInstrumentType {

    @Override
    public void instrument(Instruction instruction, List<Instruction> newInstructions, FunctionScope scope, int shadowOffset) {
        newInstructions.add(createHelperSet(instruction, scope, 0));
        newInstructions.add(createHelperSet(instruction, scope, 1));
        newInstructions.add(createHelperGet(instruction, scope, 0));
        final int flag = getInstructionFlag(instruction);
        if (flag == NumberType.UNINTERPRETED_INT_32) {
            newInstructions.add(new Instruction(NumericOperationInstructions.I32_OR));
        } else if (flag == NumberType.UNINTERPRETED_INT_64) {
            newInstructions.add(new Instruction(NumericOperationInstructions.I64_OR));
        } else {
            System.err.print("DoubleOperandArithmeticType: f32/f64 not implemented\n");
        }
        newInstructions.add(createHelperSet(instruction, scope, 0));
        newInstructions.add(createHelperGet(instruction, scope, 1));
        newInstructions.add(instruction);
        newInstructions.add(createHelperGet(instruction, scope, 0));
    }

    @Override
    public int getInstructionFlag(Instruction instruction) {
        if (partOf(instruction.getSignature(), NumericOperationInstructions.DOUBLE_POP_I32)) {
            return NumberType.UNINTERPRETED_INT_32;
        } else if (partOf(instruction.getSignature(), NumericOperationInstructions.DOUBLE_POP_I64)) {
            return NumberType.UNINTERPRETED_INT_64;
        } else if (partOf(instruction.getSignature(), NumericOperationInstructions.DOUBLE_POP_F32)) {
            return NumberType.UNINTERPRETED_FLOAT_32;
        } else if (partOf(instruction.getSignature(), NumericOperationInstructions.DOUBLE_POP_F64)) {
            return NumberType.UNINTERPRETED_FLOAT_64;
        }
        return -1;
    }

    @Override
    public List<InstructionSignature> getInstructionSignatures() {
        final List<InstructionSignature> sigs = new ArrayList<>();
        sigs.addAll(Arrays.asList(NumericOperationInstructions.DOUBLE_POP_I32));
        sigs.addAll(Arrays.asList(NumericOperationInstructions.DOUBLE_POP_I64));
        sigs.addAll(Arrays.asList(NumericOperationInstructions.DOUBLE_POP_F32));
        sigs.addAll(Arrays.asList(NumericOperationInstructions.DOUBLE_POP_F64));
        return sigs;
    }
}
