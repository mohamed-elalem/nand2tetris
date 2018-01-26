require './options'
require './debug_command'

class PointerPopCommand
    include DebugCommand

    def initialize(instruction)
        @instruction = instruction
    end

    def execute
        with_comments self.class do
            instructions = %W(
                                @SP
                                A=M
                                D=M
                                @#{Options::MEMORY_SEGMENTS[@instruction.split[2].to_sym]}
                                M=D
                            )
        end
    end
end