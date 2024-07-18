// Program function
// r0 * r1 = r2
//
// Implementation
//	
// 	for i in range(r0):
//		r2+=r1


//initialize variables

@R2
M=0

@MAINLOOP
0;JMP

(MAINLOOP)
@R0
D=M
@R2
M=D+M
@R1
M=M-1
@R1
D=M

@END
D;JLE
@MAINLOOP
0;JMP


(END)
@END
0;JMP
