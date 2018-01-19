// Begin push constant 10
@10
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
// Generating offset by 0
@R13
M=0
// End of genrating offset
// Decrementing stack
@SP
M=M-1
// End Decrementing stack
// Beginning pop local 0
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
// End Of pop instruction
@30000
// Begin push constant 21
@21
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
// Begin push constant 22
@22
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
// Beginning pop argument 2
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
// Beginning pop argument 1
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
// End Of pop instruction
@30000
// Begin push constant 36
@36
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
// Beginning pop this 6
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
// Begin push constant 42
@42
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
// Begin push constant 45
@45
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
// Generating offset by 5
@R13
M=0
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
// Beginning pop that 5
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
// Beginning pop that 2
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
// Begin push constant 510
@510
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
// Beginning pop temp 6
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
// End Of pop instruction
@30000
// Generating offset by 0
@R13
M=0
// End of genrating offset
// Begining push local 0 instruction
@LCL
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
// Generating offset by 5
@R13
M=0
M=M+1
M=M+1
M=M+1
M=M+1
M=M+1
// End of genrating offset
// Begining push that 5 instruction
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
// Generating offset by 1
@R13
M=0
M=M+1
// End of genrating offset
// Begining push argument 1 instruction
@ARG
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
// Begining push this 6 instruction
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
// Begining push this 6 instruction
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
// Begin operation add
M=M+D
// End of Operation
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
// Begining push temp 6 instruction
@5
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
