// i = screen+8000
//

@SCREEN
D=A
@i
M=D
@9000
D=A
@i
M=M+D

@color 
M=-1

@DRAW
0;JMP 

(DRAW)
    @color 
    D=M
    @R2
    M=D
    @MAINLOOP
    0;JMP
    // @SCREEN 
    // D=A 
    // @i 
    // D=M-D
    // @EXIT 
    // D;JLT

    // // set color
    // @color
    // D=M
    // @i
    // A=M
    // M=D

    // // i--
    // @i
    // M=M-1
    
    // //loop over
    // @DRAW
    // 0;JMP

(EXIT)
@EXIT
0;JMP