package wasm.instrument;

import wasm.Constants;
import wasm.editor.def.WasmModule;
import wasm.editor.def.section.type.ImportSection;
import wasm.editor.def.type.LimitType;

import java.io.IOException;
import java.util.HashMap;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class MemoryInstrumenter {

    private static final String ENV_MODULE = "env";
    private static final String MEMORY_NAME = "memory";

    public static final String STACK_LOW_EXPORT_KEY = "__stack_low";
    public static final String STACK_HIGH_EXPORT_KEY = "__stack_high";
    public static final String HEAP_BASE_EXPORT_KEY = "__heap_base";
    public static final String HEAP_END_EXPORT_KEY = "__heap_end";

    /**
     * @return the shadow offset for the shadow stack
     */
    public static int increaseStackSize(WasmModule module) throws IOException {
        final HashMap<String, Integer> metaData = MetaDataInstrumenter.getGlobalRefValues(module);
        final int stackLowIndex = metaData.get(STACK_LOW_EXPORT_KEY);
        final int stackHighIndex = metaData.get(STACK_HIGH_EXPORT_KEY);
        final int heapBaseIndex = metaData.get(HEAP_BASE_EXPORT_KEY);
        final int heapEndIndex = metaData.get(HEAP_END_EXPORT_KEY);
        if (stackHighIndex != heapBaseIndex) {
            throw new IOException(String.format("Stack high %d is not equal to heap base %d", stackHighIndex, heapBaseIndex));
        }
        final int stackSize = stackHighIndex - stackLowIndex;
        final int heapSize = heapEndIndex - heapBaseIndex;
        final int minStackPages = (int) Math.ceil((float) stackSize / Constants.PAGE_SIZE);
        final int minHeapPages = (int) Math.ceil((float) heapSize / Constants.PAGE_SIZE);

        final ImportSection importSection = module.getSection(ImportSection.class);
        if (importSection == null) {
            throw new IOException("Failed to retrieve import section from module");
        }

        //increase memory by minHeapPages + minStackPages;
        for (ImportSection.Import imp : importSection.getImports().getElements()) {
            if (ENV_MODULE.equals(imp.getModule()) && MEMORY_NAME.equals(imp.getName()) && imp.getFlag() == ImportSection.Import.LIMIT_FLAG) {
                final LimitType memoryLimit = (LimitType) imp.getDesc();
                final int currentMemorySize = memoryLimit.getMin();
                if (currentMemorySize < 1) {
                    throw new IOException("Memory limit min value is 0");
                }
                memoryLimit.setMin(currentMemorySize + minStackPages + minHeapPages);

                //create space between heap and stack and store in metadata
                metaData.put(HEAP_BASE_EXPORT_KEY, heapBaseIndex + (minStackPages * Constants.PAGE_SIZE));
                metaData.put(HEAP_END_EXPORT_KEY, heapEndIndex + (minStackPages * Constants.PAGE_SIZE));
                MetaDataInstrumenter.modifyGlobalRefValues(module, metaData);

                System.out.printf("Increased stack size (%d + %d = %d pages), set heap-base export to %d from %d, heap-end export to %d from %d\n",
                        currentMemorySize, minStackPages + minHeapPages, currentMemorySize + minStackPages + minHeapPages,
                        metaData.get(HEAP_BASE_EXPORT_KEY), heapBaseIndex, metaData.get(HEAP_END_EXPORT_KEY), heapEndIndex);

                //temp add 1024 to make up for additional function storage
                return (minStackPages * Constants.PAGE_SIZE);
            }
        }
        throw new IOException("Failed to retrieve memory import from module");
    }
}
