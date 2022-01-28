; FIND FACTORIAL OF N AND STORE IN ANOTHER MEMORY LOCATION 

.DATA
    PROD: .WORD 0

.TEXT 
    LDR R2, =PROD

    MOV R4, #1 ; COUNT REGISTER
    MOV R5, #1 ; INTERMEDIATE PRODUCT

    LOOP:   MUL R5, R4, R5;
            ADD R4, R4, #1;
            CMP R4, #11 ; FOR N=10
            BNE LOOP
    STR R5, [R2]
    SWI 0X011