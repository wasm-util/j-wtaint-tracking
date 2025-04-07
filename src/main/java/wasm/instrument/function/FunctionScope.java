package wasm.instrument.function;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class FunctionScope {

    private static final int HELPER_TYPE_SIZE = 5;

    private final HashMap<Integer, FunctionOperand> operandInstrumentMap = new HashMap<>();
    private final HashMap<Integer, FunctionOperand> operandTaintMap = new HashMap<>();
    private final List<FunctionOperand> nextHelperLocals = new ArrayList<>();
    private final List<FunctionOperand> results = new ArrayList<>();

    private int functionIndex;
    private boolean isSplit;

    public FunctionScope(int functionIndex) {
        this.functionIndex = functionIndex;
    }

    public int getTaintIndex(int regularOperandIndex) {
        for (Map.Entry<Integer, FunctionOperand> entry : operandInstrumentMap.entrySet()) {
            if (entry.getValue().getOperandIndex() == regularOperandIndex) {
                return operandTaintMap.get(entry.getKey()).getOperandIndex();
            }
        }
        return -1;
    }

    public int getOrAddHelperIndex(int flag, int index) {
        if (index >= HELPER_TYPE_SIZE) {
            return -1;
        }
        for (int i = 0; i < nextHelperLocals.size(); i++) {
            final int typeIndex = i % HELPER_TYPE_SIZE;
            final FunctionOperand operand = nextHelperLocals.get(i);
            if (typeIndex == index && operand.getNumberTypeFlag() == flag) {
                return operand.getOperandIndex();
            }
        }

        final int minIndex = operandInstrumentMap.size() + operandTaintMap.size() + nextHelperLocals.size();
        for (int i = 0; i < HELPER_TYPE_SIZE; i++) {
            nextHelperLocals.add(new FunctionOperand(flag, FunctionOperandTypes.HELPER, minIndex + i));
        }
        return getOrAddHelperIndex(flag, index);
    }

    public HashMap<Integer, FunctionOperand> getOperandInstrumentMap() {
        return operandInstrumentMap;
    }

    public HashMap<Integer, FunctionOperand> getOperandTaintMap() {
        return operandTaintMap;
    }

    public List<FunctionOperand> getNextHelperLocals() {
        return nextHelperLocals;
    }

    public List<FunctionOperand> getResults() {
        return results;
    }

    public int getFunctionIndex() {
        return functionIndex;
    }

    public void setFunctionIndex(int functionIndex) {
        this.functionIndex = functionIndex;
    }

    public boolean isSplit() {
        return isSplit;
    }

    public void setSplit(boolean split) {
        isSplit = split;
    }

    @Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("FunctionScope(").append(functionIndex).append("):\n");
        builder.append("--operandInstrumentMap: ").append(operandInstrumentMap).append("\n");
        builder.append("--operandTaintMap: ").append(operandTaintMap).append("\n");
        builder.append("--nextHelperLocals: ").append(nextHelperLocals).append("\n");
        builder.append("--results: ").append(results).append("\n");
        return builder.toString();
    }
}
