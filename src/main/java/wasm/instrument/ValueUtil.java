package wasm.instrument;

import wasm.editor.def.TypeAble;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.NumericConstantInstructions;
import wasm.editor.def.type.NumberType;
import wasm.editor.def.value.ValueTypeAble;
import wasm.editor.def.value.type.*;

import java.math.BigInteger;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class ValueUtil {

    private static final int I32_FULL_TAINTED_VALUE = -1;
    private static final long I64_FULL_TAINTED_VALUE = -1;
    private static final float F32_FULL_TAINTED_VALUE = Float.NEGATIVE_INFINITY;
    private static final double F64_FULL_TAINTED_VALUE = Double.NEGATIVE_INFINITY;

    public static InstructionSignature getNumericSignature(TypeAble typeAble) {
        if (typeAble instanceof Signed128LEB32Value) {
            return NumericConstantInstructions.I32_CONST;
        } else if (typeAble instanceof Signed128LEB64Value) {
            return NumericConstantInstructions.I64_CONST;
        } else if (typeAble instanceof FloatingPoint32Value) {
            return NumericConstantInstructions.F32_CONST;
        } else if (typeAble instanceof FloatingPoint64Value) {
            return NumericConstantInstructions.F64_CONST;
        } else {
            return null;
        }
    }

    public static InstructionSignature getConstInstructionSignature(Integer flag) {
        if (flag == NumberType.UNINTERPRETED_INT_32) {
            return NumericConstantInstructions.I32_CONST;
        } else if (flag == NumberType.UNINTERPRETED_INT_64) {
            return NumericConstantInstructions.I64_CONST;
        } else if (flag == NumberType.UNINTERPRETED_FLOAT_32) {
            return NumericConstantInstructions.F32_CONST;
        } else if (flag == NumberType.UNINTERPRETED_FLOAT_64) {
            return NumericConstantInstructions.F64_CONST;
        } else {
            return getConstInstructionSignature(NumberType.UNINTERPRETED_INT_32);
        }
    }

    public static ValueTypeAble<?> getFullBitsTaintedValue(Integer flag) {
        if (flag == NumberType.UNINTERPRETED_INT_32) {
            return createSimpleValue(flag, I32_FULL_TAINTED_VALUE);
        } else if (flag == NumberType.UNINTERPRETED_INT_64) {
            return createSimpleValue(flag, I64_FULL_TAINTED_VALUE);
        } else if (flag == NumberType.UNINTERPRETED_FLOAT_32) {
            return createSimpleValue(flag, F32_FULL_TAINTED_VALUE);
        } else if (flag == NumberType.UNINTERPRETED_FLOAT_64) {
            return createSimpleValue(flag, F64_FULL_TAINTED_VALUE);
        } else {
            return getFullBitsTaintedValue(NumberType.UNINTERPRETED_INT_32);
        }
    }

    public static ValueTypeAble<?> createSimpleValue(Integer flag, Object value) {
        if (flag == NumberType.UNINTERPRETED_INT_32) {
            return createSimpleValue(NumericConstantInstructions.I32_CONST, value);
        } else if (flag == NumberType.UNINTERPRETED_INT_64) {
            return createSimpleValue(NumericConstantInstructions.I64_CONST, value);
        } else if (flag == NumberType.UNINTERPRETED_FLOAT_32) {
            return createSimpleValue(NumericConstantInstructions.F32_CONST, value);
        } else if (flag == NumberType.UNINTERPRETED_FLOAT_64) {
            return createSimpleValue(NumericConstantInstructions.F64_CONST, value);
        } else {
            return createSimpleValue(NumberType.UNINTERPRETED_INT_32, value);
        }
    }

    public static ValueTypeAble<?> createSimpleValue(InstructionSignature instructionSignature, Object value) {
        if (Instruction.equalType(instructionSignature, NumericConstantInstructions.I32_CONST)) {
            return new Signed128LEB32Value().set(BigInteger.valueOf((int) value));
        } else if (Instruction.equalType(instructionSignature, NumericConstantInstructions.I64_CONST)) {
            return new Signed128LEB64Value().set(BigInteger.valueOf((int) value));
        } else if (Instruction.equalType(instructionSignature, NumericConstantInstructions.F32_CONST)) {
            return new FloatingPoint32Value().set((Float) value);
        } else if (Instruction.equalType(instructionSignature, NumericConstantInstructions.F32_CONST)) {
            return new FloatingPoint64Value().set((Double) value);
        }
        return createSimpleValue(NumericConstantInstructions.I32_CONST, 0);
    }
}
