class ArithmeticInstruction
    def initialize(instruction)
        @instruction = instruction
    end

    def valid
        return true if @instruction =~ /^(add|sub|neg|eq|gt|lt|and|or|not)/i
    end

    def get_low_level_instructions
        low_level_instructions = []
        low_level_instructions << pop_first_operand
        low_level_instructions << pop_second_operand if %w(add sub eq gt lt and or).include? @instruction.split.first 
        case @instruction.split.first do
        when 'add'
            low_level_instructions << 'M=D+M'
        when 'sub'
            low_level_instructions << 'M=D-M'
        when 'neg'
            low_level_instructions << 'M=-M'
        when 'eq'
            low_level_instructions << '@EQUAL'
            low_level_instructions << 'D-M;JEQ'
            low_level_instructions << 'M=0'
            low_level_instructions << '@NOT_EQUAL'
            low_level_instructions << '0;JMP'
            low_level_instructions << '(EQUAL)'
            low_level_instructions << 'M=1'
            low_level_instructions << '(NOT_EQUAL)'
        when 'gt'
            
        end
    end

    def pop_first_operand
        low_level_instructions << '@SP'
        low_level_instructions << 'M=M-1'
        low_level_instructions << 'A=M'
        low_level_instructions << 'D=M'
    end

    def pop_second_instruction
        @second_operand = true
        low_level_instructions << '@SP'
        low_level_instructions << 'M=M-1'
        low_level_instructions << 'A=M'
    end
end