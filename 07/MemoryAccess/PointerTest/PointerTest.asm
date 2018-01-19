// Begin push constant 3030
@3030
D=A
@SP
A=M
M=D
// End constant push instruction
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Begin pop pointer 0
@SP
A=M
D=M
@THIS
M=D
// End of instruction
@30000
// Begin push constant 3040
@3040
D=A
@SP
A=M
M=D
// End constant push instruction
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Begin pop pointer 1
@SP
A=M
D=M
@THAT
M=D
// End of instruction
@30000
// Begin push constant 32
@32
D=A
@SP
A=M
M=D
// End constant push instruction
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
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
@30000
// Begin push constant 46
@46
D=A
@SP
A=M
M=D
// End constant push instruction
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
// Generating offset by 6
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
// End of genrating offset
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Beginning pop that 6
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
// End Of pop instruction
@30000
// Begin push pointer 0
@THIS
D=M
@SP
A=M
M=D
// End pointer instruction
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
// Begin push pointer 1
@THAT
D=M
@SP
A=M
M=D
// End pointer instruction
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Fetching first operand
A=M
D=M
// End fetching first operand
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Fetching second operand
A=M
// End fetching second operand
// Begin operation add
M=M+D
// End of Operation
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
// Generating offset by 2
@R13
M=0
M=M+1
M=M+1
// End of genrating offset
// Begining push this 2 instruction
@THIS
D=M
@R13
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
@30000
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Fetching first operand
A=M
D=M
// End fetching first operand
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Fetching second operand
A=M
// End fetching second operand
// Begin operation sub
M=M-D
// End of Operation
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
// Generating offset by 6
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
// End of genrating offset
// Begining push that 6 instruction
@THAT
D=M
@R13
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
@30000
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Fetching first operand
A=M
D=M
// End fetching first operand
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Fetching second operand
A=M
// End fetching second operand
// Begin operation add
M=M+D
// End of Operation
// Incrementing stack
@SP
M=M+1
// End Incrementing stack
@30000
