require 'securerandom'
class OperationCommand
    def initialize(operation)
        @operation = operation.to_sym
    end

    def execute
        instruction = ["// Begin operation #{@operation.to_s}"]
        instruction << 'M=M+D' if @operation == :add
        instruction << 'M=M-D' if @operation == :sub
        instruction << 'M=-M' if @operation == :neg
        instruction << 'M=D&M' if @operation == :and
        instruction << 'M=D|M' if @operation == :or
        instruction << 'M=!D' if @operation == :not
        instruction.push(*handle_conditional) unless %i(add sub neg and or not).include? @operation
        instruction << '// End of Operation'
    end
    
    def handle_conditional
        true_label = SecureRandom.hex.upcase
        false_label = SecureRandom.hex.upcase
        instructions = [%Q(// Starting Operation #{@operation.to_sym.upcase})]
        instructions.push(*%Q{
            D=M-D
            @#{true_label}
            D;J#{@operation.to_s.upcase}
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
        }.split)
        instructions << '// End Operation'
    end
end