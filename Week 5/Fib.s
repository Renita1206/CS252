; FIBONACCI SERIES

.DATA
    ARRAY: .WORD 0,0,0,0,0,0,0,0,0,0

.TEXT
LDR R3, =ARRAY 
MOV R4, #0
MOV R0, #1
MOV R1, #1

LOOP:   ADD R2, R1, R0
        MOV R0, R1
        MOV R1, R2
        STR R2,[R3],#4
        ADD R4, R4, #1
        CMP R4, #10
        BNE LOOP

SWI 0X011
.END
