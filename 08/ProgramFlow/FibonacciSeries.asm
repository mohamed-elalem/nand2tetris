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
// Begin command PointerPopCommand
@SP
A=M
D=M
@THAT
M=D
// End command
@30000
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
@THAT
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
@THAT
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
@2
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
// Begin command LabelCommand
(MAIN_LOOP_START)
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
@COMPUTE_ELEMENT
D;JNE
// End command
@30000
// Begin command GotoCommand
@END_PROGRAM
0;JMP
// End command
@30000
// Begin command LabelCommand
(COMPUTE_ELEMENT)
// End command
@30000
// Begin command OffsetCommand Generating offset by 0
@R13
M=0
// End command
// Begin command GeneralPushCommand
@THAT
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
@THAT
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
@THAT
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
// Begin command PointerPushCommand
@THAT
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
// Begin command PointerPopCommand
@SP
A=M
D=M
@THAT
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
// Begin command GotoCommand
@MAIN_LOOP_START
0;JMP
// End command
@30000
// Begin command LabelCommand
(END_PROGRAM)
// End command
@30000
