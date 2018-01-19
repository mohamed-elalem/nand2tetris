class DecrementStackCommand
    def execute
        instructions = ['// Decrementing stack']
        instructions.push(*%Q{
            @SP
            M=M-1
        }.split)
        instructions << '// End Decrementing stack'
    end
end