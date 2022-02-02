; GCD 
; b - operands stored in memory locations

.TEXT
LDR R5, =A 
LDR R6, =B 

LDR R0, [R5]
LDR R1, [R6]

GCD: CMP R0,R1
        BEQ RES 
        BLT L1 
        SUB R0,R0,R1
        B GCD
        SWI 0X011 

RES: MOV R2, R0
     SWI 0X011

L1: SUB R1, R1, R0
    B GCD


.DATA
    A: .WORD 0X00000005
    B: .WORD 0X00000014