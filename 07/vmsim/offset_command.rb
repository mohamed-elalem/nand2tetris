require './options'

class OffsetCommand
    def initialize(offset)
        @offset = offset
    end

    def execute
        instructions = ["// Generating offset by #{@offset}", "@#{Options::OFFSET_REGISTER}", 'M=0']
        instructions.push(*(['M=M+1'] * @offset.to_i))
        instructions << '// End of genrating offset'
    end
end