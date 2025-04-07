package wasm.instrument;

import wasm.editor.def.Index;
import wasm.editor.def.TypeAble;
import wasm.editor.def.WasmModule;
import wasm.editor.def.section.type.ExportSection;
import wasm.editor.def.section.type.GlobalSection;
import wasm.editor.def.value.type.Signed128LEB32Value;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class MetaDataInstrumenter {

    public static HashMap<String, Integer> getGlobalRefValues(WasmModule module) {
        return getMetaData(module, ExportSection.Export.GLOBAL_REF_INDEX);
    }

    public static HashMap<String, Integer> getFuncRefValues(WasmModule module) {
        return getMetaData(module, ExportSection.Export.FUNC_REF_INDEX);
    }

    private static HashMap<String, Integer> getMetaData(WasmModule module, int flag) {
        final ExportSection exportSection = module.getSection(ExportSection.class);
        if (exportSection != null && !exportSection.getExports().getElements().isEmpty()) {
            final HashMap<String, Integer> metaData = new HashMap<>();
            final GlobalSection globalSection = module.getSection(GlobalSection.class);
            if (globalSection == null) {
                return null;
            }
            final List<GlobalSection.Global> globals = globalSection.getGlobals().getElements();
            for (ExportSection.Export export : exportSection.getExports().getElements()) {
                if (export.getFlag() != flag) {
                    continue;
                }
                // meta exports
                if (export.getFlag() == ExportSection.Export.GLOBAL_REF_INDEX) {
                    final GlobalSection.Global global = globals.get(export.getDesc().getValue());
                    final TypeAble arg = global.getExpression().getInstructions().get(0).getArguments().get(0);
                    if (arg instanceof Signed128LEB32Value) {
                        metaData.put(export.getName(), ((Signed128LEB32Value) arg).get().intValue());
                    }
                } else if (export.getFlag() == ExportSection.Export.FUNC_REF_INDEX) {
                    metaData.put(export.getName(), export.getDesc().getValue());
                }

            }
            return metaData;
        }
        return null;
    }

    public static void modifyGlobalRefValues(WasmModule module, HashMap<String, Integer> metaData) {
        modifyMetaData(module, metaData, ExportSection.Export.GLOBAL_REF_INDEX);
    }

    public static void modifyFuncRefValues(WasmModule module, HashMap<String, Integer> metaData) {
        modifyMetaData(module, metaData, ExportSection.Export.FUNC_REF_INDEX);
    }

    private static void modifyMetaData(WasmModule module, HashMap<String, Integer> metaData, int flag) {
        final ExportSection exportSection = module.getSection(ExportSection.class);
        final HashMap<String, Integer> newMetaData = new HashMap<>(metaData);
        if (exportSection != null) {
            final GlobalSection globalSection = module.getSection(GlobalSection.class);
            if (globalSection == null) {
                return;
            }
            final List<GlobalSection.Global> globals = globalSection.getGlobals().getElements();

            for (ExportSection.Export export : exportSection.getExports().getElements()) {
                if (export.getFlag() != flag) {
                    continue;
                }
                if (newMetaData.containsKey(export.getName())) {
                    if (export.getFlag() == ExportSection.Export.GLOBAL_REF_INDEX) {
                        final GlobalSection.Global global = globals.get(export.getDesc().getValue());
                        final TypeAble arg = global.getExpression().getInstructions().get(0).getArguments().get(0);
                        if (arg instanceof Signed128LEB32Value) {
                           ((Signed128LEB32Value) arg).set(BigInteger.valueOf(newMetaData.get(export.getName())));
                        }
                    } else if (export.getFlag() == ExportSection.Export.FUNC_REF_INDEX) {
                        export.getDesc().setValue(newMetaData.get(export.getName()));
                    }

                    newMetaData.remove(export.getName());
                }
            }

            if (!newMetaData.isEmpty()) {
                for (Map.Entry<String, Integer> entry : newMetaData.entrySet()) {
                    final ExportSection.Export export = new ExportSection.Export();
                    export.setName(entry.getKey());
                    export.setFlag(flag);
                    export.setDesc(new Index(entry.getValue()));
                    exportSection.getExports().getElements().add(export);
                }
            }
        }
    }
}
