// Begin command FunctionCommand
@Class1.set_pass
0;JMP
(Class1.set)
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
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@16
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
@16
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
(Class1.set_pass)
// End command
@30000
// Begin command FunctionCommand
@Class1.get_pass
0;JMP
(Class1.get)
// End command
@30000
// Begin command OffsetCommand Generating offset by 0
@R13
M=0
// End command
// Begin command GeneralPushCommand
@16
D=A
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
@16
D=A
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
(Class1.get_pass)
// End command
@30000
// Begin command FunctionCommand
@Sys.init_pass
0;JMP
(Sys.init)
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
@8
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
@CC2C419461A7E03CA63413F9D49096A2
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
@Class1.set
0;JMP
(CC2C419461A7E03CA63413F9D49096A2)
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
// Begin command ConstantPushCommand
@23
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
@15
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
@D99FFB8700328F35D44766DF35EAD278
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
@Class2.set
0;JMP
(D99FFB8700328F35D44766DF35EAD278)
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
@67A92F84A05591D3FC61FE327E14B3C3
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
@Class1.get
0;JMP
(67A92F84A05591D3FC61FE327E14B3C3)
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
@65B754C1D6214936276F41BBF07B3D2B
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
@Class2.get
0;JMP
(65B754C1D6214936276F41BBF07B3D2B)
// End command
@30000
// Begin command LabelCommand
(WHILE)
// End command
@30000
// Begin command GotoCommand
@WHILE
0;JMP
// End command
@30000
// Begin command FunctionCommand
@Class2.set_pass
0;JMP
(Class2.set)
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
// Begin command DecrementStackCommand
@SP
M=M-1
// End command
// Begin command GeneralPopCommand
@SP
A=M
@16
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
@16
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
(Class2.set_pass)
// End command
@30000
// Begin command FunctionCommand
@Class2.get_pass
0;JMP
(Class2.get)
// End command
@30000
// Begin command OffsetCommand Generating offset by 0
@R13
M=0
// End command
// Begin command GeneralPushCommand
@16
D=A
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
@16
D=A
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
(Class2.get_pass)
// End command
@30000
