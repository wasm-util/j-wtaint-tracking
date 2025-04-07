package wasm.instrument;

import wasm.instrument.function.FunctionFrameInstrumenter;
import wasm.instrument.function.FunctionScope;
import wasm.instrument.function.InstructionInstrumenter;
import wasm.editor.def.WasmModule;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class TaintInstrumenter {

    public static final void apply(final WasmModule module, Object... arguments) throws IOException {
        //increase stack size
        final int shadowOffset = MemoryInstrumenter.increaseStackSize(module);

        //clone globals in which values are passed
        final HashMap<Integer, Integer> globalMap = GlobalInstrumenter.cloneTaintGlobals(module);

        //split all functions
        final HashMap<String, List<Integer>> taintMap = getTaintMap(arguments);
        final HashMap<Integer, FunctionScope> functionMap = FunctionFrameInstrumenter.instrumentFunctionFrames(module, taintMap);

        //instrument taint operations into functions
        InstructionInstrumenter.instrumentTaintIntoFunctions(module, shadowOffset, globalMap, functionMap);

        //add new functions exported functions to allow exposure of signature
        final HashMap<String, Integer> exportedFunctions = MetaDataInstrumenter.getFuncRefValues(module);
        final HashMap<String, Integer> newExportedFunctions = new HashMap<>();
        for (Map.Entry<String, Integer> function : exportedFunctions.entrySet()) {
            final FunctionScope scope = functionMap.get(function.getValue());
            if (scope == null) {
                continue;
            }
            if (function.getValue() != scope.getFunctionIndex()) {
                newExportedFunctions.put("taint_signature_" + function.getKey(), scope.getFunctionIndex());
            }
        }
        exportedFunctions.putAll(newExportedFunctions);
        MetaDataInstrumenter.modifyFuncRefValues(module, exportedFunctions);
    }

    private static HashMap<String, List<Integer>> getTaintMap(Object... arguments) throws IOException {
        final HashMap<String, List<Integer>> map = new HashMap<>();
        for (int i = 0; i < arguments.length; i+=2) {
            if (arguments.length < i + 2) {
                throw new IOException("Incorrect given amount of taint args, required 2n args [<String> funcName, <String> taintIndices]");
            }
            final String funcName = (String) arguments[i];
            final String[] taintIndices = ((String) arguments[i + 1]).replaceAll("\\s+", "").split(",");
            map.put(funcName, Arrays.stream(taintIndices).map(Integer::parseInt).collect(Collectors.toList()));
        }
        return map;
    }
}

