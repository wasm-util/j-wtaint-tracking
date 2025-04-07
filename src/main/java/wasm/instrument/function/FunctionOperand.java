package wasm.instrument.function;

import wasm.editor.Parser;
import wasm.editor.def.type.NumberType;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class FunctionOperand {

    private final int numberTypeFlag;
    private final FunctionOperandTypes functionOperandType;
    private final int operandIndex;

    public FunctionOperand(int numberTypeFlag, FunctionOperandTypes functionOperandType, int operandIndex) {
        this.numberTypeFlag = numberTypeFlag;
        verify(numberTypeFlag);
        this.functionOperandType = functionOperandType;
        this.operandIndex = operandIndex;
    }

    private void verify(int numberTypeFlag) {
        switch(numberTypeFlag) {
            case NumberType.UNINTERPRETED_INT_32:
            case NumberType.UNINTERPRETED_INT_64:
            case NumberType.UNINTERPRETED_FLOAT_32:
            case NumberType.UNINTERPRETED_FLOAT_64:
                break;
            default:
                System.err.printf("FunctionVariable: Unknown number type %d\n", numberTypeFlag);
                break;
        }
    }

    public boolean equalsFunctionType(final FunctionOperandTypes... functionOperandTypes) {
        for (FunctionOperandTypes functionOperandType : functionOperandTypes) {
            if (functionOperandType.equals(this.functionOperandType)) {
                return true;
            }
        }
        return false;
    }

    public int getNumberTypeFlag() {
        return numberTypeFlag;
    }

    public int getOperandIndex() {
        return operandIndex;
    }

    public FunctionOperandTypes getFunctionOperandType() {
        return functionOperandType;
    }

    @Override
    public String toString() {
        return String.format("FunctionOperand(%s, %d, %s)", Parser.toHex(numberTypeFlag), operandIndex, functionOperandType);
    }
}
