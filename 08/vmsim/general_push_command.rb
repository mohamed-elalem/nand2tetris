require './options'
require './debug_command'

class GeneralPushCommand
    include DebugCommand

    def initialize(instruction)
        @instruction = instruction.split
    end

    def execute
        with_comments self.class do
            instructions = %W(
                                @#{memory_segment}
                                D=#{%w(temp static).include?(@instruction[1]) ? 'A' : 'M'}
                                @#{Options::OFFSET_REGISTER}
                                A=D+M
                                D=M
                                @SP
                                A=M
                                M=D
                            )
        end
    end

    def memory_segment
        return Options::MEMORY_SEGMENTS[@instruction[1].to_sym] if %w(local argument this that).include? @instruction[1]
        return Options::TEMP_BASE if @instruction[1] == 'temp'
        return Options::STATIC_BASE if @instruction[1] == 'static'
    end
end