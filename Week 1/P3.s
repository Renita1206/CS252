MOV R0, #5
MOV R1, #6

ADD R3, R1, R2
ORR R3, R1, R2

MVN R5, R1; Negation of R1 stored in register R5 (1s complement)
ADD R6, R0, R1; R0 - R1

SWI 0X011; LOGICAL END OF PROGRAM