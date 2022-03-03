

.DATA
A: .WORD 10,2,35,22,38,12,42,51,28
N: .WORD 3
NORM: .WORD 0

.TEXT
    LDR R0,=A
    LDR R1,=NORM
    LDR R8,[R1]
    LDR R2,=N
    LDR R2,[R2]
    MOV R3,#0
    MOV R4,#0
    MOV R6,#0
    LOOP:
        MLA R5,R2,R3,R4
        MOV R5,R5,LSL #2
        LDR R7,[R0,R5]
        ADD R6,R6,R7
        ADD R3,R3,#1
        CMP R3,R2
        BNE LOOP
        CMP R6,R8
        STRGE R6,[R1]
        MOVGE R8,R6
        MOV R6,#0
        MOV R3,#0
        ADD R4,R4,#1
        CMP R4,R2
        BNE LOOP
    SWI 0X011
.END