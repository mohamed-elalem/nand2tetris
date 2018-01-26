require './debug_command'

class DecrementStackCommand
    include DebugCommand
    def execute
        with_comments self.class do
            instructions = %W{
                                @SP
                                M=M-1
                            }
        end
    end
end