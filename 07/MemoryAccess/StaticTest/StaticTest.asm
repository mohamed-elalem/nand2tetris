// Begin push constant 111
@111
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
// Begin push constant 333
@333
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
// Begin push constant 888
@888
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
// Generating offset by 8
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
// End of genrating offset
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Beginning pop static 8
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
// End Of pop instruction
@30000
// Generating offset by 3
@R13
M=0
M=M+1
M=M+1
M=M+1
// End of genrating offset
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Beginning pop static 3
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
// End Of pop instruction
@30000
// Generating offset by 1
@R13
M=0
M=M+1
// End of genrating offset
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Beginning pop static 1
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
// End Of pop instruction
@30000
// Generating offset by 3
@R13
M=0
M=M+1
M=M+1
M=M+1
// End of genrating offset
// Begining push static 3 instruction
@16
D=A
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
// Generating offset by 1
@R13
M=0
M=M+1
// End of genrating offset
// Begining push static 1 instruction
@16
D=A
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
// Generating offset by 8
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
// End of genrating offset
// Begining push static 8 instruction
@16
D=A
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
