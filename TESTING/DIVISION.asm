.MODEL TINY

.DATA

MSG1 DW "REMAINDER : $"   
MSG2 DW "QUOTIENT : $"   
   
.CODE

MOV AX, 08H
MOV BX, 03H

AAD
DIV BL   


MOV CX, AX

MOV DX, OFFSET MSG2
MOV AH, 09H
INT 21H                 
                 
MOV DL, CL 
ADD DL, 30H
MOV AH, 02H
INT 21H

MOV DL, 10
MOV AH, 02H
INT 21H

MOV DX, OFFSET MSG1
MOV AH, 09H
INT 21H                 
                 
MOV DL, CH 
ADD DL, 30H
MOV AH, 02H
INT 21H

                 


.EXIT
END