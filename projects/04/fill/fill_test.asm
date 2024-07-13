// initialize variables

@color
M=-1

@MAINLOOP
0;JMP

(SETBLACK)
    @color
    M=-1
    @CHECKCOLOR
    0;JMP

(SETWHITE)
    @color
    M=0
    @CHECKCOLOR
    0;JMP

(MAINLOOP)
    // initialize iterable for DRAW
    @SCREEN
    D=A
    @i
    M=D
    @9000
    D=A
    @i
    M=M+D

    // CHECK COLOR WITH HELP OF KEYCODE
    @KBD
    D=M
    @SETBLACK
    D;JGT
    @SETWHITE
    D;JEQ

    @MAINLOOP
    0;JMP


(CHECKCOLOR)
    // SKIP DRAW IF SCREEN COLOR SAME
    @color
    D=M
    @SCREEN
    D=M-D

    @MAINLOOP
    D;JLT
    @DRAW
    0;JMP

(DRAW)
    @SCREEN 
    D=A 
    @i 
    D=M-D
    @MAINLOOP
    D;JLT

    // set color
    @color
    D=M
    @i
    A=M
    M=D

    // i--
    @i
    M=M-1

    // loop over
    @DRAW
    0;JMP