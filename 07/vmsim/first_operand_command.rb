class FirstOperandCommand
    def execute
        instructions = ['// Fetching first operand']
        instructions.push(*%Q{
            A=M
            D=M           
        }.split)
        instructions << '// End fetching first operand' 
    end
end