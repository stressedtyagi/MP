.MODEL TINY

.DATA

MSG1 DW "THE ARRAY_1 IS : $"
MSG2 DW "THE ARRAY_2 IS : $"
MSG3 DW "THE ARRAY AFTER SUBTRACTION IS : $"

ARRAY1 DB 4H,5H,6H,7H
ARRAY2 DB 5H,3H,2H,0H

.CODE                

MOV DX, OFFSET MSG1
MOV AH, 09H
INT 21H

MOV SI, 0H
MOV CX, 4    
    
X:       
    MOV DL, ARRAY1[SI]
    ADD DL, 30H
    MOV AH, 02H
    INT 21H
    INC SI
    LOOP X

MOV SI, 0H
MOV CX, 4  

MOV DL, 10
MOV AH, 02H
INT 21H

MOV DX, OFFSET MSG2
MOV AH, 09H
INT 21H
  

Y:
    MOV DL, ARRAY2[SI]
    ADD DL, 30H
    MOV AH, 02H
    INT 21H
    INC SI
    LOOP Y        

MOV DL, 10
MOV AH, 02H
INT 21H


MOV DX, OFFSET MSG3
MOV AH, 09H
INT 21H         

MOV SI, 0H
MOV CX, 4

SUBTRACTION:
            MOV AL, ARRAY1[SI]
            SUB AL, ARRAY2[SI]
            MOV DL, AL
            ADD DL, 30H
            MOV AH, 02H
            INT 21H
            INC SI
            LOOP SUBTRACTION
                

.EXIT
END