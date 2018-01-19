// Begin push constant 55
@55
D=A
@SP
A=M
M=D
// End constant push instruction
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
// Generating offset by 2
@R13
M=0
M=M+1
M=M+1
// End of genrating offset
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Beginning pop this 2
@SP
A=M
@THIS
D=M
@R13
M=D+M
@SP
A=M
D=M
@R13
A=M
M=D
// End Of pop instruction
// Generating offset by 2
@R13
M=0
M=M+1
M=M+1
// End of genrating offset
// Begining push this 2 instruction
@R13
D=M
@THIS
A=D+M
D=M
@SP
A=M
M=D
// End of Instruction push
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
