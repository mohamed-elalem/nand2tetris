// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Initializing a (first operand)

@R0
D = M

@a
M = D

// Initializing b (second operand)

@R1
D = M

@b
M = D

// Initializing product

@product
M = 0

@i
M = 0


(LOOP)
    // Testing termination condition b = 0
    @b
    D = M

    // Incrementing from b down to 0
    @STOP
    D;JEQ

    @a
    D = M

    @product
    M = M + D

    @b
    M = M - 1

    @LOOP
    0;JMP

(STOP)

// Storing product in R2

@product
D = M

@R2
M = D

(END)
@END
0;JMP


// @i
// M = 0

// @R2
// M = 0

// (LOOP)
//     @i
//     D = M

//     @R1
//     D = D - M

//     @END
//     D;JGE

//     @R0
//     D = M

//     @R2
//     M = D + M
    
//     @i
//     M = M + 1

//     @LOOP
//     0;JMP


// (END)
// 0;JMP