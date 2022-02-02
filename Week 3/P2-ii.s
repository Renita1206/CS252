; ADD SUM OF ELEMENTS IN AN ARRAY AND STORE IN ANOTHER MEMORY LOCATION
; AUTOINDEXING

.DATA
    A: .WORD 1, 2, 3, 4
    SUM: .WORD 0

.TEXT 
    LDR R1, =A
    LDR R2, =SUM
    MOV R2, #0
    MOV R5, #4
    MOV R4, #1

    LOOP:   LDR R4, [R1,R5]!
            ADD R2, R2, R4;
            ADD R5, R5, #4;
            ADD R4, R4, #1;
            CMP R4, #5
            BNE LOOP
    STR R2, [R3]
    SWI 0X011