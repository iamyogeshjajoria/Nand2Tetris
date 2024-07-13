// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// pseudo-code
// r2 = 0
// for (i=0; i<R1; i++){
//      R2 += R0
// }

@0
D=A
@R2
M=D


(LOOP)
    @R1
    D=M
    @R2
    M=M+D
    @1
    D=A
    @R0
    M=M-D


    @R0
    D=M
    @END
    D;JLE

@LOOP
0;JMP

(END)
0;JMP



