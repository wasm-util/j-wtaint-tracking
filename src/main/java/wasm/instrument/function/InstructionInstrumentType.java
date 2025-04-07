package wasm.instrument.function;

import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.VariableInstructions;
import wasm.editor.def.value.type.Unsigned128LEB32Value;

import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public interface InstructionInstrumentType {

    void instrument(final Instruction instruction, final List<Instruction> newInstructions, final FunctionScope scope, final int shadowOffset);

    int getInstructionFlag(final Instruction instruction);

    List<InstructionSignature> getInstructionSignatures();

    default int getHelperIndex(final Instruction instruction, final FunctionScope scope, final int index) {
        final int flag = getInstructionFlag(instruction);
        if (flag == -1) {
            return -1;
        }
        return scope.getOrAddHelperIndex(flag, index);
    }

    default Instruction createHelperSet(final Instruction instruction, final FunctionScope scope, final int index) {
        return new Instruction(VariableInstructions.LOCAL_SET, List.of(Unsigned128LEB32Value.createSimple(getHelperIndex(instruction, scope, index))));
    }

    default Instruction createHelperSet(final int flag, final FunctionScope scope, final int index) {
        return new Instruction(VariableInstructions.LOCAL_SET, List.of(Unsigned128LEB32Value.createSimple(scope.getOrAddHelperIndex(flag, index))));
    }

    default Instruction createHelperGet(final Instruction instruction, final FunctionScope scope, final int index) {
        return new Instruction(VariableInstructions.LOCAL_GET, List.of(Unsigned128LEB32Value.createSimple(getHelperIndex(instruction, scope, index))));
    }

    default Instruction createHelperGet(final int flag, final FunctionScope scope, final int index) {
        return new Instruction(VariableInstructions.LOCAL_GET, List.of(Unsigned128LEB32Value.createSimple(scope.getOrAddHelperIndex(flag, index))));
    }

    default Instruction createHelperTee(final Instruction instruction, final FunctionScope scope, final int index) {
        return new Instruction(VariableInstructions.LOCAL_TEE, List.of(Unsigned128LEB32Value.createSimple(getHelperIndex(instruction, scope, index))));
    }

    default Instruction createHelperTee(final int flag, final FunctionScope scope, final int index) {
        return new Instruction(VariableInstructions.LOCAL_TEE, List.of(Unsigned128LEB32Value.createSimple(scope.getOrAddHelperIndex(flag, index))));
    }

    default boolean partOf(final InstructionSignature signature, final InstructionSignature[] numericSignatures) {
        for (InstructionSignature instructionSignature : numericSignatures) {
            if (instructionSignature.equals(signature)) {
                return true;
            }
        }
        return false;
    }
}
