package wasm.instrument.function.instruction;

import wasm.instrument.function.FunctionScope;
import wasm.instrument.function.InstructionInstrumentType;
import wasm.editor.def.instruction.Instruction;
import wasm.editor.def.instruction.InstructionSignature;
import wasm.editor.def.instruction.list.MemoryInstructions;
import wasm.editor.def.instruction.list.ParametricInstructions;
import wasm.editor.def.instruction.type.MemoryArgumentType;
import wasm.editor.def.type.NumberType;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author Alan Massom <https://github.com/SavionsSw>
 */
public class StackLoadType implements InstructionInstrumentType {

    @Override
    public void instrument(Instruction instruction, List<Instruction> newInstructions, FunctionScope scope, int shadowOffset) {
        newInstructions.add(new Instruction(ParametricInstructions.DROP));
        newInstructions.add(createHelperTee(NumberType.UNINTERPRETED_INT_32, scope, 0));
        newInstructions.add(instruction);
        newInstructions.add(createHelperGet(NumberType.UNINTERPRETED_INT_32, scope, 0));

        final MemoryArgumentType argumentType = (MemoryArgumentType) instruction.getArguments().get(0);
        final MemoryArgumentType newArgumentType = new MemoryArgumentType();
        newArgumentType.setAlign(argumentType.getAlign());
        newArgumentType.setOffset(argumentType.getOffset() + shadowOffset);
        newInstructions.add(new Instruction(instruction.getSignature(), List.of(newArgumentType)));
    }

    @Override
    public int getInstructionFlag(Instruction instruction) {
        if (partOf(instruction.getSignature(), MemoryInstructions.LOAD_I32)) {
            return NumberType.UNINTERPRETED_INT_32;
        } else if (partOf(instruction.getSignature(), MemoryInstructions.LOAD_I64)) {
            return NumberType.UNINTERPRETED_INT_64;
        } else if (partOf(instruction.getSignature(), MemoryInstructions.LOAD_F32)) {
            return NumberType.UNINTERPRETED_FLOAT_32;
        } else if (partOf(instruction.getSignature(), MemoryInstructions.LOAD_F64)) {
            return NumberType.UNINTERPRETED_FLOAT_64;
        }
        return -1;
    }

    @Override
    public List<InstructionSignature> getInstructionSignatures() {
        final List<InstructionSignature> sigs = new ArrayList<>();
        sigs.addAll(Arrays.asList(MemoryInstructions.LOAD_I32));
        sigs.addAll(Arrays.asList(MemoryInstructions.LOAD_I64));
        sigs.addAll(Arrays.asList(MemoryInstructions.LOAD_F32));
        sigs.addAll(Arrays.asList(MemoryInstructions.LOAD_F64));
        return sigs;
    }
}
