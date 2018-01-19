require './options'

class GeneralPopCommand
    def initialize(instruction)
        @instruction = instruction
    end

    def execute
        instructions = ["// Beginning #{@instruction}"]
        instructions.push(*%Q(
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
        ).split)
        instructions << '// End Of pop instruction'
    end
end