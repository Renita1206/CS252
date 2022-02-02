; GCD 

MOV R0, #25
MOV R1, #35

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