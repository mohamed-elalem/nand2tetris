require './options'

class OffsetCommand
    include DebugCommand

    def initialize(offset)
        @offset = offset
    end

    def execute
        with_comments(self.class.to_s + " Generating offset by #{@offset}") {
            instructions = %W(@R13 M=0)
            instructions.push(*(['M=M+1'] * @offset.to_i))
        }
    end
end