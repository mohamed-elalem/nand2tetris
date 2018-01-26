require './debug_command'

class FirstOperandCommand
    include DebugCommand
    def execute
        with_comments self.class do 
            instructions = %W{
                                A=M
                                D=M           
                            }
        end
    end
end