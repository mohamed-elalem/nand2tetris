// Begin command FunctionCommand
@Sys.init_pass
0;JMP
(Sys.init)
// End command
@30000
// Begin command ConstantPushCommand
@4
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
@9025C308EC631CBD540168C774B59EDC
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
@Main.fibonacci
0;JMP
(9025C308EC631CBD540168C774B59EDC)
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
@Main.fibonacci_pass
0;JMP
(Main.fibonacci)
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
D=M-D
@83CF740A9AC731DC955B94D5C55763FC
D;JLT
@SP
A=M
M=0
@4B460EC3A4B5D82DC557CA4D3D266EF1
0;JMP
(83CF740A9AC731DC955B94D5C55763FC)
@0
A=M
M=-1
(4B460EC3A4B5D82DC557CA4D3D266EF1)
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
@IF_TRUE
D;JNE
// End command
@30000
// Begin command GotoCommand
@IF_FALSE
0;JMP
// End command
@30000
// Begin command LabelCommand
(IF_TRUE)
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
(Main.fibonacci_pass)
// End command
@30000
// Begin command LabelCommand
(IF_FALSE)
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
@8F79EE0B1BB7894C104070B7ACAE6A89
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
@Main.fibonacci
0;JMP
(8F79EE0B1BB7894C104070B7ACAE6A89)
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
@69DE4C7367BF5DFD3DA0AEDE58206F15
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
@Main.fibonacci
0;JMP
(69DE4C7367BF5DFD3DA0AEDE58206F15)
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
(Sys.init_pass)
// End command
@30000
