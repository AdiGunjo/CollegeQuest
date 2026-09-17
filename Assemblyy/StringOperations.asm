.MODEL SMALL
.STACK 100H

.DATA
    PROMPT      DB 10,13,"Enter a string (max 50 chars): $"
    STR_BUF     DB 51             
                DB ?               
                DB 51 DUP('$')     
    NL          DB 10,13,'$'
    LEN_MSG     DB 10,13,"Length of string: $"
    REV_MSG     DB 10,13,"Reversed string: $"
    PAL_YES     DB 10,13,"The string IS a palindrome$"
    PAL_NO      DB 10,13,"The string is NOT a palindrome$"
    REV_BUF     DB 51 DUP('$')

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

    MOV AH, 02H        
    MOV DL, 0AH
    INT 21H

    LEA BX, STR_BUF
    MOV AL, [BX+1]
    MOV AH, 0
    MOV CX, AX          

    LEA SI, STR_BUF+2
    ADD SI, CX
    MOV BYTE PTR [SI], '$'

    LEA DX, LEN_MSG
    MOV AH, 09H
    INT 21H

    MOV AX, CX
    CALL PRINT_NUM

    LEA SI, STR_BUF+2   
    MOV DI, SI
    ADD DI, CX
    DEC DI              

    LEA BX, REV_BUF
    MOV DX, CX          

REVERSE_LOOP:
    MOV AL, [DI]
    MOV [BX], AL
    INC BX
    DEC DI
    LOOP REVERSE_LOOP
    MOV BYTE PTR [BX], '$'

    LEA DX, REV_MSG
    MOV AH, 09H
    INT 21H
    LEA DX, REV_BUF
    MOV AH, 09H
    INT 21H

    LEA SI, STR_BUF+2
    LEA DI, REV_BUF
    MOV CX, DX          

PAL_CHECK:
    MOV AL, [SI]
    CMP AL, [DI]
    JNE NOT_PALINDROME
    INC SI
    INC DI
    LOOP PAL_CHECK

    LEA DX, PAL_YES
    MOV AH, 09H
    INT 21H
    JMP DONE

NOT_PALINDROME:
    LEA DX, PAL_NO
    MOV AH, 09H
    INT 21H

DONE:
    MOV AH, 4CH
    INT 21H
MAIN ENDP

PRINT_NUM PROC
    MOV BX, 10
    MOV DX, 0
    DIV BX             
    CMP AL, 0
    JE PRINT_ONES
    ADD AL, 30H
    PUSH DX
    MOV DL, AL
    MOV AH, 02H
    INT 21H
    POP DX
PRINT_ONES:
    ADD DL, 30H
    MOV AH, 02H
    INT 21H
    RET
PRINT_NUM ENDP

END MAIN