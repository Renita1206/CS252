; ADD TWO NUMBERS AND STORE SUM IN REGISTER

.TEXT ; CODE SEGMENT
LDR R1, =A; Stores address of label A in R1
LDR R2, =B
LDR R3, =C

LDR R4,[R1]; Stores value stored at address of R1 in R4
LDR R5,[R2]

ADD R6, R4, R5

STR R6,[R3]; Writes value stored at R6 in memory address stored in R3

SWI OXO11 ; LOGICAL END OF PROGRAM

.DATA ; DATA SEGMENT
A: .WORD Ox11111111 ;
B: .WORD Ox23121232
C: .WORD Ox00000000
; PHYSICAL END OF PROGRAM


