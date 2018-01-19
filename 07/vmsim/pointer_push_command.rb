class PointerPushCommand
    def initialize(instruction)
        @instruction = instruction.split
    end

    def execute
        instructions = ["// Begin #{@instruction.join ' '}"]
        instructions.push(*%Q(
            @#{@instruction[2].to_i == 0 ? "THIS" : "THAT"}
            D=M
            @SP
            A=M
            M=D
        ).split)
        instructions << '// End pointer instruction'
    end
end