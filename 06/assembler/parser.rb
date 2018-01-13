class Parser
    attr_writer :instruction_number

    LABEL_PATTERN = /\s*\(.*\)/
    A_INSTRUCTION_PATTERN = /\s*@.+/
    C_INSTRUCTION_PATTERN = /\s*([AMD]=)?.([+-].(;.{3})?)?/

    def initialize
        @instruction_number = 0
    end

    def parse(instruction)
        case instruction
        when LABEL_PATTERN then return :label, @instruction_number
        when A_INSTRUCTION_PATTERN then return :a_instruction, @instruction_number += 1
        when C_INSTRUCTION_PATTERN then return :c_instruction, @instruction_number += 1
        else return :invalid_instruction, nil
        end
    end
end