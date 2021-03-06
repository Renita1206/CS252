;Matrix multiplication

.DATA 
    A: .WORD 1,2,3,4,5,6,7,8,9
    B: .WORD 1,0,0,0,1,0,0,0,1
    C: .WORD 0,0,0,0,0,0,0,0,0

.TEXT
    LDR R0,=A
    LDR R1,=B
    LDR R2,=C

    MOV R3,#0
    MOV R4,#0
    MOV R5,#0
    MOV R10,#3
    LOOP1:
        MUL R6,R3,R10
        ADD R6,R6,R4
        MOV R6,R6,LSL #2
        MUL R7,R3,R10
        ADD R7,R7,R5
        MOV R7,R7,LSL #2
        MUL R8,R5,R10
        ADD R8,R8,R4
        MOV R8,R8,LSL #2
        MOV R11,R6
        LDR R6,[R2,R6]
        LDR R7,[R0,R7]
        LDR R8,[R1,R8]
        MUL R9,R7,R8
        ADD R9,R9,R6
        STR R9,[R2,R11]
        ADD R5,R5,#1
        CMP R5,#3
        BNE LOOP1
        MOV R5,#0
        ADD R4,R4,#1
        CMP R4,#3
        BNE LOOP1
        MOV R4,#0
        MOV R5,#0
        ADD R3,R3,#1
        CMP R3,#3
        BNE LOOP1
    SWI 0X011
.END

