.DATA 
   A:.WORD 1,2,3,4,5,6,7,8,9
   SUM:.WORD 0,0,0

.TEXT
   LDR R0,=A
   LDR R1,=SUM
   MOV R2,#0      ;row number
   MOV R3,#0      ;column number 
   MOV R4,#3      ;number of elements in each column
   MOV R10,#0

   LOOP1:MLA R5,R4,R2,R3
         MOV R5,R5,LSL #2
         LDR R6,[R0,R5]
         ADD R10,R10,R6
         ADD R3,R3,#1
         CMP R3,#3
         BNE LOOP1 
         STR R10,[R1],#4
         ADD R2,R2,#1
         MOV R3,#0
         MOV R10,#0
         CMP R2,#3
         BNE LOOP1
         SWI 0x011   
      
   