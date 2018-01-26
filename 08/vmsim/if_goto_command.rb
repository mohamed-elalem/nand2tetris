require './debug_command'

class IfGotoCommand
    include DebugCommand

    def initialize(instruction)
        @instruction = instruction
    end

    def execute
        with_comments self.class do
            instructions = %W(
                @#{@instruction.split[1]}
                D;JNE
            )
        end
    end
end