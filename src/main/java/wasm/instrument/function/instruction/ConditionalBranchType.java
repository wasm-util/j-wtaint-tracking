package wasm.instrument.function.instruction;

import wasm.instrument.function.FunctionScope;
import wasm.instrument.function.InstructionInstrumentType;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.ControlInstructions;
import wasm.editor.def.instruction.list.ParametricInstructions;

import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class ConditionalBranchType implements InstructionInstrumentType {

    @Override
    public void instrument(Instruction instruction, List<Instruction> newInstructions, FunctionScope scope, int shadowOffset) {
        if (Instruction.equalType(instruction, ControlInstructions.BR_IF)) {
            newInstructions.add(new Instruction(ParametricInstructions.DROP));
        }
        newInstructions.add(instruction);
    }

    @Override
    public int getInstructionFlag(Instruction instruction) {
        return -1;
    }

    @Override
    public List<InstructionSignature> getInstructionSignatures() {
        return List.of(ControlInstructions.BR, ControlInstructions.BR_IF);
    }
}
