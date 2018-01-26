require './debug_command'

class GotoCommand
    include DebugCommand

    def initialize(instruction)
        @instruction = instruction
    end

    def execute
        with_comments self.class do
            instructions = %W[
                @#{@instruction.split[1]}
                0;JMP
            ]
        end
    end
end