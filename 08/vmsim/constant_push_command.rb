require './debug_command'

class ConstantPushCommand
    include DebugCommand

    def initialize(instruction)
        @instruction = instruction.split
    end

    def execute
        with_comments self.class do
        instructions = %W(
                            @#{@instruction[2]}
                            D=A
                            @SP
                            A=M
                            M=D
                        )
        end
    end
end