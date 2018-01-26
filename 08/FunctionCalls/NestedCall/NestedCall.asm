// Begin command FunctionCommand
@Sys.init_pass
0;JMP
(Sys.init)
// End command
@30000
// Begin command ConstantPushCommand
@4000
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
// Begin command PointerPopCommand
@SP
A=M
D=M
@THIS
M=D
// End command
@30000
// Begin command ConstantPushCommand
@5000
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
// Begin command PointerPopCommand
@SP
A=M
D=M
@THAT
M=D
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
// Begin command CallCommand
@31693AFE83C6106F4CABD752F1A13647
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
@Sys.main
0;JMP
(31693AFE83C6106F4CABD752F1A13647)
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
@5
D=A
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
(LOOP)
// End command
@30000
// Begin command GotoCommand
@LOOP
0;JMP
// End command
@30000
// Begin command FunctionCommand
@Sys.main_pass
0;JMP
(Sys.main)
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
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
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
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
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
// Begin command IncrementStackCommand
@SP
M=M+1
// End command
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
// Begin command ConstantPushCommand
@4001
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
// Begin command PointerPopCommand
@SP
A=M
D=M
@THIS
M=D
// End command
@30000
// Begin command ConstantPushCommand
@5001
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
// Begin command PointerPopCommand
@SP
A=M
D=M
@THAT
M=D
// End command
@30000
// Begin command ConstantPushCommand
@200
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
// Begin command ConstantPushCommand
@40
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
// Begin command ConstantPushCommand
@123
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
// Begin command CallCommand
@7636F0AEA9A88C023163139CB01D4210
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
@Sys.add12
0;JMP
(7636F0AEA9A88C023163139CB01D4210)
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
@5
D=A
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
// Begin command OffsetCommand Generating offset by 2
@R13
M=0
M=M+1
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
// Begin command OffsetCommand Generating offset by 3
@R13
M=0
M=M+1
M=M+1
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
// Begin command OffsetCommand Generating offset by 4
@R13
M=0
M=M+1
M=M+1
M=M+1
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
(Sys.main_pass)
// End command
@30000
// Begin command FunctionCommand
@Sys.add12_pass
0;JMP
(Sys.add12)
// End command
@30000
// Begin command ConstantPushCommand
@4002
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
// Begin command PointerPopCommand
@SP
A=M
D=M
@THIS
M=D
// End command
@30000
// Begin command ConstantPushCommand
@5002
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
@12
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
(Sys.add12_pass)
// End command
@30000
