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
    MOV AH, 0          
    MOV BL, NUM2
    MOV BH, 0          
    MOV CX, 8          
    MOV DX, 0          

SHIFT_ADD_LOOP:
    SHR BX, 1          
    JNC SKIP_ADD       
    ADD DX, AX         

SKIP_ADD:
    SHL AX, 1          
    LOOP SHIFT_ADD_LOOP

    MOV RESULT, DX

    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN