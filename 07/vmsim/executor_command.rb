class ExecutorCommand
    def initialize(*commands)
        @commands = commands.flatten
    end

    def execute
        instructions = []
        @commands.each do |command|
            instructions.push(*command.execute)
        end
        instructions
    end
end