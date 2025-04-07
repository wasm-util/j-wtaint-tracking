package wasm.instrument.function.instruction;

import wasm.instrument.function.FunctionScope;
import wasm.instrument.function.InstructionInstrumentType;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.ParametricInstructions;

import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class DropType implements InstructionInstrumentType {

    @Override
    public void instrument(Instruction instruction, List<Instruction> newInstructions, FunctionScope scope, int shadowOffset) {
        newInstructions.add(instruction);
        newInstructions.add(instruction);
    }

    @Override
    public int getInstructionFlag(Instruction instruction) {
        return -1;
    }

    @Override
    public List<InstructionSignature> getInstructionSignatures() {
        return List.of(ParametricInstructions.DROP);
    }
}
