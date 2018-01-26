// Begin command FunctionCommand
@ABC_pass
0;JMP
(ABC)
// End command
@30000
// Begin command OffsetCommand Generating offset by 0
@R13
M=0
// End command
// Begin command GeneralPushCommand
@ARG
D=M
@R13
A=D+M
D=M
@SP
A=M
M=D
// End command
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
@30000
// Begin command OffsetCommand Generating offset by 1
@R13
M=0
M=M+1
// End command
// Begin command GeneralPushCommand
@ARG
D=M
@R13
A=D+M
D=M
@SP
A=M
M=D
// End command
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
@30000
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command FirstOperandCommand
A=M
D=M
// End command
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command SecondOperandCommand
A=M
// End command
// Begin command OperationCommand
M=M+D
// End command
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
@30000
// Begin command ReturnCommand
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
(ABC_pass)
// End command
@30000
// Begin command ConstantPushCommand
@5
D=A
@SP
A=M
M=D
// End command
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
@30000
// Begin command ConstantPushCommand
@6
D=A
@SP
A=M
M=D
// End command
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
@30000
// Begin command ConstantPushCommand
@7
D=A
@SP
A=M
M=D
// End command
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
@30000
// Begin command OffsetCommand Generating offset by 7
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
// End command
// Begin command CallCommand
@276B86D5A16745B2AD805AB6901D1363
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
@ABC
0;JMP
(276B86D5A16745B2AD805AB6901D1363)
// End command
@30000
// Begin command OffsetCommand Generating offset by 7
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
// End command
// Begin command CallCommand
@88275B0678E33D478CC4CDE88C041737
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
@ABC
0;JMP
(88275B0678E33D478CC4CDE88C041737)
// End command
@30000
