;IF - ELSE-IF ALGORITHM

.DATA
    A: .WORD 0X00000001
    B: .WORD 0X00000002
    C: .WORD 0X00000005
    D: .WORD 0X00000000
    E: .WORD 0X00000000

.TEXT
    LDR R1, =A
    LDR R2, [R1]
    LDR R3, =B
    LDR R4, [R3]
    LDR R5, =C
    LDR R6, [R5]
    LDR R7, =D
    LDR R9, =E

CMP R2,R4 ; IF A==B
    BEQ L1 ; 
    CMP R6,R4 ; IF B==C
    BEQ L2 ;
    MUL R8, R2, R1
    STR R8,[R9]
    SWI 0X011; LOGICAL END OF PROGRAM

L1: ADD R8, R2, R4
    STR R8,[R5]
    SWI 0X011; LOGICAL END OF PROGRAM

L2: SUB R8, R2, R4
    STR R8,[R7]
    SWI 0X011; LOGICAL END OF PROGRAM