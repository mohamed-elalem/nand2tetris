require './debug_command'

class ReturnCommand
    include DebugCommand
    
    def initialize(func_def)
        @func_def = func_def
    end

    def execute
        with_comments self.class do
            instruction = %W[
                @LCL
                D=M
                @R15
                M=D
                @SP
                M=M-1
                A=M
                D=M
                @ARG
                A=M
                M=D
                @ARG
                D=M
                @SP
                M=D+1
                @R13
                M=1
                D=1
                @R15
                A=M-D
                D=M
                @THAT
                M=D
                @R13
                M=M+1
                D=M
                @R15
                A=M-D
                D=M
                @THIS
                M=D
                @R13
                M=M+1
                D=M
                @R15
                A=M-D
                D=M
                @ARG
                M=D
                @R13
                M=M+1
                D=M
                @R15
                A=M-D
                D=M
                @LCL
                M=D
                @R13
                M=M+1
                D=M
                @R15
                A=M-D
                A=M
                0;JMP
                (#{@func_def}_pass)
            ]
        end
    end
end