require 'securerandom'
require './debug_command'

class OperationCommand
    include DebugCommand

    def initialize(operation)
        @operation = operation.to_sym
    end

    def execute
        with_comments self.class do
            instruction = []
            instruction << 'M=M+D' if @operation == :add
            instruction << 'M=M-D' if @operation == :sub
            instruction << 'M=-M' if @operation == :neg
            instruction << 'M=D&M' if @operation == :and
            instruction << 'M=D|M' if @operation == :or
            instruction << 'M=!D' if @operation == :not
            instruction.push(*handle_conditional) unless %i(add sub neg and or not).include? @operation
            instruction
        end
    end
    
    def handle_conditional
        true_label = SecureRandom.hex.upcase
        false_label = SecureRandom.hex.upcase
        instructions = %W(
                            D=M-D
                            @#{true_label}
                            D;J#{@operation.to_s.upcase[0..1]}
                            @SP
                            A=M
                            M=0
                            @#{false_label}
                            0;JMP
                            (#{true_label})
                            @0
                            A=M
                            M=-1
                            (#{false_label})
                        )
    end
end