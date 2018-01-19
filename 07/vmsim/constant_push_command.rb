class ConstantPushCommand
    def initialize(instruction)
        @instruction = instruction.split
    end

    def execute
        instructions = ["// Begin #{@instruction.join ' '}"]
        instructions.push(*%Q(
            @#{@instruction[2]}
            D=A
            @SP
            A=M
            M=D
        ).split)
        instructions << '// End constant push instruction'
    end
end