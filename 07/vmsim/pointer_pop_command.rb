require './options'

class PointerPopCommand
    def initialize(instruction)
        @instruction = instruction
    end

    def execute
        instructions = ["// Begin #{@instruction}"]
        instructions.push(*%Q(
            @SP
            A=M
            D=M
            @#{Options::MEMORY_SEGMENTS[@instruction.split[2].to_sym]}
            M=D
        ).split)
        instructions << '// End of instruction'
    end
end