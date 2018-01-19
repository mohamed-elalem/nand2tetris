// Begin push constant 7
@7
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
// Begin push constant 8
@8
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
