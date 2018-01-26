require './debug_command'

class PointerPushCommand
    include DebugCommand

    def initialize(instruction)
        @instruction = instruction.split
    end

    def execute
        with_comments self.class do
            instructions = %W(
                                @#{@instruction[2].to_i == 0 ? "THIS" : "THAT"}
                                D=M
                                @SP
                                A=M
                                M=D
                            )
        end
    end
end