class SecondOperandCommand
    def execute
        instructions = ['// Fetching second operand']
        instructions.push(*%Q{
            A=M
        }.split)
        instructions << '// End fetching second operand'
    end
end