.MODEL SMALL
.STACK 100H

.DATA
    NUM1    DB 05H
    NUM2    DB 04H
    RESULT  DW 0000H
    MSG     DB 10,13,"Result of multiplication: $"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM1
    MOV CX, 0
    MOV CL, NUM2       
    MOV BX, 0          

    CMP CX, 0
    JE STORE_RESULT 
    
       
ADD_LOOP:
    MOV AH, 0
    ADD BX, AX         
    LOOP ADD_LOOP

STORE_RESULT:
    MOV RESULT, BX

    LEA DX, MSG
    MOV AH, 09H
    INT 21H
    ; (Add a hex-to-ASCII display routine here to print RESULT)

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN