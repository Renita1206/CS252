;FIBONACCI SERIES

.DATA
A:.WORD 0,0,0,0,0,0,0,0,0,0

.TEXT 
LDR R2,=A
MOV R0,#1
MOV R1,#1
MOV R4,#2
STR R1,[R2],#4
STR R1,[R2],#4
LOOP:ADD R3,R0,R1
STR R3,[R2],#4
ADD R4,R4,#1
MOV R1,R0
MOV R0,R3
CMP R4,#10
BNE LOOP
SWI 0X011