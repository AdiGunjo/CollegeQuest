; commit changes

.MODEL SMALL
.STACK 100H

.DATA
    NUM     DB -5              
    MSG_POS DB 'The number is POSITIVE$'
    MSG_NEG DB 'The number is NEGATIVE$'
    MSG_ZERO DB 'The number is ZERO$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM
    CMP AL, 0
    JG  POSITIVE
    JL  NEGATIVE
    JE  ZERO

POSITIVE:
    LEA DX, MSG_POS
    JMP DISPLAY

NEGATIVE:
    LEA DX, MSG_NEG
    JMP DISPLAY

ZERO:
    LEA DX, MSG_ZERO

DISPLAY:
    MOV AH, 09H
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN