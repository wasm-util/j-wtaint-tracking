package wasm;

import wasm.instrument.TaintInstrumenter;
import wasm.editor.Parser;
import wasm.editor.def.WasmModule;

import java.util.Arrays;
import java.util.Base64;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class Main {

    public static final String INPUT_DIRECTORY = "./wasm/input";
    public static final String INPUT_PATH = String.join("/", INPUT_DIRECTORY, "%s", String.join("", "%s", ".wasm"));
    public static final String OUTPUT_DIRECTORY = "./wasm/output";
    public static final String OUTPUT_PATH = String.join("/", OUTPUT_DIRECTORY, "%s", String.join("", "%s", ".wasm"));

    public static void main(String[] args) throws Exception {
        if (args.length < 1) {
            System.err.print("No args specified\n");
            return;
        }

        final byte[] inputBytes = Parser.readFromInput(String.format(INPUT_PATH, args[0], args[0]));
        System.out.printf("Read file from input: [%s]\n", args[0]);

        final WasmModule module = Parser.parseModule(inputBytes);
        System.out.printf("Parsed module: %s\n", module);

        TaintInstrumenter.apply(module, args.length > 1 ? Arrays.copyOfRange(args, 1, args.length) : null);

        final byte[] outputBytes = Parser.writeModule(module);
        final String outputPath = String.format(OUTPUT_PATH, args[0], args[0]);
        Parser.writeToInput(outputPath, outputBytes);
        System.out.printf("Written module to: %s\n", outputPath);

        System.out.println("originalBase64: \"" + new String(Base64.getEncoder().encode(inputBytes)) + "\",");
        System.out.println("instrumentedBase64: \"" + new String(Base64.getEncoder().encode(outputBytes))+ "\"");
    }

}