require './debug_command'

class LabelCommand
    include DebugCommand
    def initialize(instruction)
        @instruction = instruction
    end

    def execute
        with_comments self.class do
            instruction = %W$(#{@instruction.split[1]})$
        end
    end
end