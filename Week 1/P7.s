; ADD 5 NUMBERS

MOV R0, #5; Store decimal number 5 in register R0
MOV R1, #7
MOV R2, #1
MOV R3, #4
MOV R4, #3

ADD R5, R1, R0
ADD R6, R2, R3
ADD R7, R5, R6
ADD R8, R7, R4; FINAL RESULT IN R8

SWI 0X011; LOGICAL END OF PROGRAM