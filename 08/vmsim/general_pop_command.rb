require './options'
require './debug_command'

class GeneralPopCommand
    include DebugCommand

    def initialize(instruction)
        @instruction = instruction
    end

    def execute
        with_comments self.class do
            instructions = %W(
                                @SP
                                A=M
                                @#{if @instruction.split[1] == 'temp' then Options::TEMP_BASE elsif @instruction.split[1] == 'static' then Options::STATIC_BASE else Options::MEMORY_SEGMENTS[@instruction.split[1].to_sym] end}
                                D=#{%w(static temp).include?(@instruction.split[1]) ? 'A' : 'M'}
                                @#{Options::OFFSET_REGISTER}
                                M=D+M
                                @SP
                                A=M
                                D=M
                                @#{Options::OFFSET_REGISTER}
                                A=M
                                M=D
                            )
        end
    end
end