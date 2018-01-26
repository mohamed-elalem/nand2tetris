// Begin command ConstantPushCommand
@0
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
@30000
// Begin command LabelCommand
(LOOP_START)
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
// Begin command ConstantPushCommand
@1
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
// Begin command IfGotoCommand
@LOOP_START
D;JNE
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
