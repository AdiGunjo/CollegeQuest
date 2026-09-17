.MODEL SMALL
.STACK 100H
.DATA
    PROMPT  DB 10,13,"Enter a string: $"
    STR_BUF DB 51
            DB ?
            DB 51 DUP('$')
    RES_MSG DB 10,13,"Uppercase: $"
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, PROMPT
    MOV AH, 09H
    INT 21H
    LEA DX, STR_BUF
    MOV AH, 0AH
    INT 21H
    LEA BX, STR_BUF
    MOV CL, [BX+1]
    MOV CH, 0
    LEA SI, STR_BUF+2
CONVERT_LOOP:
    MOV AL, [SI]
    CMP AL, 'a'
    JB SKIP_CONV
    CMP AL, 'z'
    JA SKIP_CONV
    SUB AL, 20H
    MOV [SI], AL
SKIP_CONV:
    INC SI
    LOOP CONVERT_LOOP
    MOV BYTE PTR [SI], '$'
    LEA DX, RES_MSG
    MOV AH, 09H
    INT 21H
    LEA DX, STR_BUF+2
    MOV AH, 09H
    INT 21H
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN