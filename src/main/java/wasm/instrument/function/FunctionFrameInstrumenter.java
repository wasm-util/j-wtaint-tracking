package wasm.instrument.function;

import wasm.instrument.MetaDataInstrumenter;
import wasm.editor.def.Index;
import wasm.editor.def.Vector;
import wasm.editor.def.WasmModule;
import wasm.editor.def.section.type.CodeSection;
import wasm.editor.def.section.type.FunctionSection;
import wasm.editor.def.section.type.TypeSection;
import wasm.editor.def.type.FunctionType;
import wasm.editor.def.type.ResultType;
import wasm.editor.def.type.ValueType;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class FunctionFrameInstrumenter {

    public static HashMap<Integer, FunctionScope> instrumentFunctionFrames(final WasmModule module, HashMap<String, List<Integer>> taintMap) throws IOException {
        final FunctionSection functionSection = module.getSection(FunctionSection.class);
        final HashMap<String, Integer> exportedFunctions = MetaDataInstrumenter.getFuncRefValues(module);
        final HashMap<Integer, FunctionScope> functionMap = new HashMap<>();
        final int size = functionSection.getSignatureIndices().getElements().size();
        for (int functionIndex = 0; functionIndex < size; functionIndex++) {
            final boolean isExported = exportedFunctions.containsValue(functionIndex);
            final FunctionScope scope = doubleScopeVariables(module, functionIndex);
            if (isExported && scope.isSplit()) {
                int finalFunctionIndex = functionIndex;
                final Optional<String> optionalKey = exportedFunctions.entrySet().stream().filter(
                        entry -> entry.getValue() == finalFunctionIndex).map(Map.Entry::getKey).findAny();
                splitAndLinkFunction(module, scope, taintMap.get(optionalKey.orElse(null)));
            }
            functionMap.put(functionIndex, scope);
        }
        return functionMap;
    }

    private static FunctionScope doubleScopeVariables(final WasmModule module, final int functionIndex) throws IOException {
        final TypeSection typeSection = module.getSection(TypeSection.class);
        final FunctionSection functionSection = module.getSection(FunctionSection.class);
        final CodeSection codeSection = module.getSection(CodeSection.class);
        final int typeIndex = functionSection.getSignatureIndices().getElements().get(functionIndex).getValue();
        final FunctionType entryFunctionType = typeSection.getFunctionTypes().getElements().get(typeIndex);
        final FunctionScope functionScope = new FunctionScope(functionIndex);

        int newOperandIndex = 0;

        //start with params
        if (!entryFunctionType.getParameterTypes().getValueTypes().getElements().isEmpty()) {
            functionScope.setSplit(true);
            final ResultType parameterValueType = new ResultType();
            final Vector<ValueType> newValueTypes = new Vector<>(ValueType.class);
            for (ValueType type : entryFunctionType.getParameterTypes().getValueTypes().getElements()) {
                final int index = functionScope.getOperandInstrumentMap().size();
                //add original param
                functionScope.getOperandInstrumentMap().put(index, new FunctionOperand(type.getFlag(), FunctionOperandTypes.PARAM, newOperandIndex++));
                newValueTypes.getElements().add(type);

                //add taint param
                functionScope.getOperandTaintMap().put(index, new FunctionOperand(type.getFlag(), FunctionOperandTypes.PARAM_TAINT, newOperandIndex++));
                newValueTypes.getElements().add(type);
            }
            parameterValueType.setValueTypes(newValueTypes);
            entryFunctionType.setParameterTypes(parameterValueType);
        }

        //continue with existing locals
        final CodeSection.Code functionCode = codeSection.getCode().getElements().get(functionIndex);
        if (!functionCode.getFunc().getLocals().getElements().isEmpty()) {
            final Vector<CodeSection.Local> newLocals = new Vector<>(CodeSection.Local.class);
            for (CodeSection.Local local : functionCode.getFunc().getLocals().getElements()) {
                for (int i = 0; i < local.getCount(); i++) {
                    final int index = functionScope.getOperandInstrumentMap().size();
                    final CodeSection.Local newLocal = createSingleLocal(local.getValType().getFlag());

                    //add original local
                    functionScope.getOperandInstrumentMap().put(index, new FunctionOperand(local.getValType().getFlag(), FunctionOperandTypes.LOCAL, newOperandIndex++));
                    newLocals.getElements().add(newLocal);

                    //add taint local
                    functionScope.getOperandTaintMap().put(index, new FunctionOperand(local.getValType().getFlag(), FunctionOperandTypes.LOCAL_TAINT, newOperandIndex++));
                    newLocals.getElements().add(newLocal);
                }
            }
            functionCode.getFunc().setLocals(newLocals);
        }

        //continue with result types
        if (!entryFunctionType.getResultTypes().getValueTypes().getElements().isEmpty()) {
            functionScope.setSplit(true);
            final ResultType resultValueType = new ResultType();
            final Vector<ValueType> newValueTypes = new Vector<>(ValueType.class);
            for (ValueType type : entryFunctionType.getResultTypes().getValueTypes().getElements()) {

                //add taint result
                functionScope.getResults().add(new FunctionOperand(type.getFlag(), FunctionOperandTypes.RESULT_TAINT, -1));
                newValueTypes.getElements().add(type);

                //add original result
                functionScope.getResults().add(new FunctionOperand(type.getFlag(), FunctionOperandTypes.RESULT, -1));
                newValueTypes.getElements().add(type);
            }
            resultValueType.setValueTypes(newValueTypes);
            entryFunctionType.setResultTypes(resultValueType);
        }

        if (!functionScope.getOperandInstrumentMap().isEmpty()) {
            FunctionBodyInstrumenter.fixOperandIndices(module, functionScope);
        }

        return functionScope;
    }

    public static CodeSection.Local createSingleLocal(int flag) {
        final CodeSection.Local local = new CodeSection.Local();
        local.setCount(1);
        final ValueType valueType = new ValueType();
        valueType.setValuesByFlag(flag);
        local.setValType(valueType);
        return local;
    }

    private static void splitAndLinkFunction(final WasmModule module, final FunctionScope scope, final List<Integer> taintList) throws IOException {
        final TypeSection typeSection = module.getSection(TypeSection.class);
        final FunctionSection functionSection = module.getSection(FunctionSection.class);
        final CodeSection codeSection = module.getSection(CodeSection.class);

        final int functionIndex = scope.getFunctionIndex();
        final int typeIndex = functionSection.getSignatureIndices().getElements().get(functionIndex).getValue();
        final FunctionType functionType = typeSection.getFunctionTypes().getElements().get(typeIndex);

        final int nextFunctionIndexValue = functionSection.getSignatureIndices().getElements().size();
        final int nextTypeIndexValue = typeSection.getFunctionTypes().getElements().size();
        scope.setFunctionIndex(nextFunctionIndexValue);

        //clone and add new function signature
        final FunctionType newFunctionType = new FunctionType();
        newFunctionType.setFlag(functionType.getFlag());
        newFunctionType.setParameterTypes(functionType.getParameterTypes());
        newFunctionType.setResultTypes(functionType.getResultTypes());
        typeSection.getFunctionTypes().getElements().add(newFunctionType);

        //add type index to function section
        functionSection.getSignatureIndices().getElements().add(new Index(nextTypeIndexValue));

        //create new code element, add to code section
        final CodeSection.Code functionCode = codeSection.getCode().getElements().get(functionIndex);
        final CodeSection.Code newCode = new CodeSection.Code();
        newCode.setFunc(functionCode.getFunc());
        codeSection.getCode().getElements().add(newCode);

        //modify previous function signature, remove taint operands (to respect exported function signature)
        final Vector<CodeSection.Local> locals = new Vector<>(CodeSection.Local.class);
        final ResultType paramType = new ResultType();
        final Vector<ValueType> paramValueTypes = new Vector<>(ValueType.class);
        final ResultType resultType = new ResultType();
        final Vector<ValueType> resultValueTypes = new Vector<>(ValueType.class);
        for (int i = 0; i < scope.getOperandInstrumentMap().size(); i++) {
            final FunctionOperand functionOperand = scope.getOperandInstrumentMap().get(i);
            if (functionOperand == null) {
                throw new IOException(String.format("Invalid function scope operand map for function %d", scope.getFunctionIndex()));
            }
            if (functionOperand.equalsFunctionType(FunctionOperandTypes.PARAM)) {
                final ValueType valueType = new ValueType();
                valueType.setValuesByFlag(functionOperand.getNumberTypeFlag());
                paramValueTypes.getElements().add(valueType);
            }
        }
        for (FunctionOperand operand : scope.getResults()) {
            if (operand.equalsFunctionType(FunctionOperandTypes.RESULT)) {
                final ValueType valueType = new ValueType();
                valueType.setValuesByFlag(operand.getNumberTypeFlag());
                resultValueTypes.getElements().add(valueType);
            }
        }

        paramType.setValueTypes(paramValueTypes);
        resultType.setValueTypes(resultValueTypes);
        functionType.setParameterTypes(paramType);
        functionType.setResultTypes(resultType);
        final CodeSection.Func func = new CodeSection.Func();
        func.setLocals(locals);
        func.setExpression(FunctionBodyInstrumenter.createExportedEntryFunctionExpression(module, nextFunctionIndexValue, functionType, locals, taintList));
        functionCode.setFunc(func);
    }
}
