require './debug_command'
require 'securerandom'
class CallCommand
    include DebugCommand

    def initialize(instruction)
        @func_name = instruction.split[1]
    end
    
    def execute
        label = SecureRandom.hex.upcase
        with_comments self.class do
            instructions = %W[
                @#{label}
                D=A
                @SP
                A=M
                M=D
                @SP
                M=M+1
                @LCL
                D=M
                @SP
                A=M
                M=D
                @SP
                M=M+1
                @ARG
                D=M
                @SP
                A=M
                M=D
                @SP
                M=M+1
                @THIS
                D=M
                @SP
                A=M
                M=D
                @SP
                M=M+1
                @THAT
                D=M
                @SP
                A=M
                M=D
                @SP
                M=M+1
                @SP
                D=M
                @13
                D=D-M
                @ARG
                M=D
                @SP
                D=M
                @LCL
                M=D
                @#{@func_name}
                0;JMP
                (#{label})
            ]
        end
    end
end