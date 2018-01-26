// Begin command FunctionCommand
@SimpleFunction.test_pass
0;JMP
(SimpleFunction.test)
// Begin command ConstantPushCommand
@0
D=A
@SP
A=M
M=D
// End command
// Begin command OffsetCommand Generating offset by 0
@R13
M=0
// End command
// Begin command GeneralPopCommand
@SP
A=M
@LCL
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End command
// Begin command ConstantPushCommand
@0
D=A
@SP
A=M
M=D
// End command
// Begin command OffsetCommand Generating offset by 1
@R13
M=0
M=M+1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@LCL
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End command
// End command
@30000
// Begin command OffsetCommand Generating offset by 0
@R13
M=0
// End command
// Begin command GeneralPushCommand
@LCL
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
@LCL
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
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command FirstOperandCommand
A=M
D=M
// End command
// Begin command OperationCommand
M=!D
// End command
// Begin command IncrementStackCommand
@SP
M=M+1
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
M=M-D
// End command
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
@30000
// Begin command ReturnCommand
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
D=A
@SP
M=D+1
@R13
M=1
@LCL
D=M
@R14
M=D
@R13
D=M
@R14
D=M-D
@THAT
M=D
@R13
M=M+1
@R14
D=M-D
@THIS
M=D
@R13
M=M+1
@R14
D=M-D
@ARG
M=D
@R13
M=M+1
@R14
D=M-D
@LCL
M=D
@R13
M=M+1
@R14
A=M-D
A=M
0;JMP
(SimpleFunction.test_pass)
// End command
@30000
// Begin command ConstantPushCommand
@1234
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
// Begin command OffsetCommand Generating offset by 0
@R13
M=0
// End command
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@ARG
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End command
@30000
// Begin command ConstantPushCommand
@37
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
// Begin command OffsetCommand Generating offset by 1
@R13
M=0
M=M+1
// End command
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@ARG
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End command
@30000
// Begin command ConstantPushCommand
@9
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
// Begin command OffsetCommand Generating offset by 2
@R13
M=0
M=M+1
M=M+1
// End command
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@ARG
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End command
@30000
// Begin command ConstantPushCommand
@305
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
// Begin command OffsetCommand Generating offset by 3
@R13
M=0
M=M+1
M=M+1
M=M+1
// End command
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@ARG
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End command
@30000
// Begin command ConstantPushCommand
@300
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
// Begin command OffsetCommand Generating offset by 4
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
// End command
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@ARG
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End command
@30000
// Begin command ConstantPushCommand
@3010
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
// Begin command OffsetCommand Generating offset by 5
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
// End command
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@ARG
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End command
@30000
// Begin command ConstantPushCommand
@4010
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
// Begin command OffsetCommand Generating offset by 6
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
// End command
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@ARG
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
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
// Begin command OffsetCommand Generating offset by 2
@R13
M=0
M=M+1
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
// Begin command OffsetCommand Generating offset by 3
@R13
M=0
M=M+1
M=M+1
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
// Begin command OffsetCommand Generating offset by 4
@R13
M=0
M=M+1
M=M+1
M=M+1
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
// Begin command OffsetCommand Generating offset by 5
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
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
// Begin command OffsetCommand Generating offset by 6
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
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
// Begin command OffsetCommand Generating offset by 11
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
// End command
// Begin command CallCommand
@BA2F7BE83ABB3F2B11200B28DA5D6C50
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
@SimpleFunction.test
0;JMP
(BA2F7BE83ABB3F2B11200B28DA5D6C50)
// End command
@30000
