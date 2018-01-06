// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(PROGRAM_LOOP)

    @8191
    D = A

    @limit
    M = D

    (WHITE_LOOP)
        @limit
        D = M

        D;JLT

        @SCREEN
        D = A

        @limit
        A = D + M

        M = 0

        @limit
        M = M - 1

        @WHITE_LOOP
        0;JMP

    @KBD
    D = M

    @PROGRAM_LOOP
    D;JEQ
    
    @8191
    D = A

    @limit
    M = D

    (BLACK_LOOP)
        @limit
        D = M

        D;JLT

        @SCREEN
        D = A

        @limit
        A = D + M

        M = -1

        @limit
        M = M - 1

        @BLACK_LOOP
        0;JMP

    @PROGRAM_LOOP
    0;JMP