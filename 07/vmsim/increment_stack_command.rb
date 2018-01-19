class IncrementStackCommand
    def execute
        instructions = ['// Incrementing stack']
        instructions.push(*%Q{
            @SP
            M=M+1
        }.split)
        instructions << '// End Incrementing stack'
    end
end