require './debug_command'

class SecondOperandCommand
    include DebugCommand

    def execute
        with_comments self.class do
            instructions = %W{ A=M }
        end
    end
end