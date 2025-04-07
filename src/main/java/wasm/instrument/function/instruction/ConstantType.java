package wasm.instrument.function.instruction;

import wasm.instrument.ValueUtil;
import wasm.instrument.function.FunctionScope;
import wasm.instrument.function.InstructionInstrumentType;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.NumericConstantInstructions;
import wasm.editor.def.type.NumberType;

import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class ConstantType implements InstructionInstrumentType {

    @Override
    public void instrument(Instruction instruction, List<Instruction> newInstructions, FunctionScope scope, int shadowOffset) {
        newInstructions.add(instruction);
        newInstructions.add(new Instruction(instruction.getSignature(), List.of(ValueUtil.createSimpleValue(getInstructionFlag(instruction), 0))));
    }

    @Override
    public int getInstructionFlag(Instruction instruction) {
        if (Instruction.equalType(instruction, NumericConstantInstructions.I32_CONST)) {
            return NumberType.UNINTERPRETED_INT_32;
        } else if (Instruction.equalType(instruction, NumericConstantInstructions.I64_CONST)) {
            return NumberType.UNINTERPRETED_INT_64;
        } else if (Instruction.equalType(instruction, NumericConstantInstructions.F32_CONST)) {
            return NumberType.UNINTERPRETED_FLOAT_32;
        } else if (Instruction.equalType(instruction, NumericConstantInstructions.F64_CONST)) {
            return NumberType.UNINTERPRETED_FLOAT_64;
        }
        return -1;
    }

    @Override
    public List<InstructionSignature> getInstructionSignatures() {
        return List.of(NumericConstantInstructions.I32_CONST, NumericConstantInstructions.I64_CONST,
                NumericConstantInstructions.F32_CONST, NumericConstantInstructions.F64_CONST);
    }
}
