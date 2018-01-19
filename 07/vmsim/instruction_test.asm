// // Add command
// @0
// M=M-1
// A=M
// D=M

// @0
// M=M-1
// A=M
// M=D+M

// @0
// M=M+1

// @0
// M=M-1
// A=M
// M=-M

// @0
// M=M+1

// @0
// M=M-1
// A=M
// D=M

// @0
// M=M-1
// A=M
// D=D-M
// @EQ
// D;JEQ
// @0
// A=M
// M=0
// @NEQ
// 0;JMP
// (EQ)
// @0
// A=M
// M=1
// (NEQ)
// @0
// M=M+1

// @0
// M=!M

// @1
// A=M
// D=M

// @0
// A=M
// M=D

// @0
// M=M+1

// // push LCL 5
// @R13
// D=M
// @1
// A=D+M
// D=M
// @0
// A=M
// M=D
// @0
// M=M+1

// push static 

// pop local 5
// @0
// M=M-1
// A=M
// @1
// D=M
// @13
// M=D+M
// @0
// A=M
// D=M
// @13
// A=M
// D=M

// pop pointer this
@0
M=M-1
A=M
D=M
@3
M=D

