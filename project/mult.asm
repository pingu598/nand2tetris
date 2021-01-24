// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
    @0  //X VARIABLE     
    M=M
    @1  //Y VARIABLE
    M=M
    @3  //N VARIABLE
    M=0
    @2  //RESULT
    M=0
    
    //Test if x or y 0
    @0
    D=M
    @END
    D;JEQ
    @1
    D=M
    @END
    D;JEQ
    
(LOOP)
    @3
    D = M
    @0 
    D = D-M
    @END
    D;JEQ
    @1
    D = M
    @2
    M = D+M
    @3
    M = M+1
    @LOOP
    0;JMP

(END)
    @END
    0;JMP