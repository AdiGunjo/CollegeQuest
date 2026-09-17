.MODEL SMALL
.STACK 100H
.DATA
    PROMPT  DB 10,13,"Enter a string: $"
    STR_BUF DB 51
            DB ?
            DB 51 DUP('$')
    COUNT   DB 0
    MSG     DB 10,13,"Vowel count: $"
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
VOWEL_LOOP:
    MOV AL, [SI]
    CMP AL, 'A'
    JB NEXT_CHAR
    CMP AL, 'Z'
    JA CHECK_LOWER
    OR AL, 20H
CHECK_LOWER:
    CMP AL, 'a'
    JE IS_VOWEL
    CMP AL, 'e'
    JE IS_VOWEL
    CMP AL, 'i'
    JE IS_VOWEL
    CMP AL, 'o'
    JE IS_VOWEL
    CMP AL, 'u'
    JE IS_VOWEL
    JMP NEXT_CHAR
IS_VOWEL:
    INC COUNT
NEXT_CHAR:
    INC SI
    LOOP VOWEL_LOOP
    LEA DX, MSG
    MOV AH, 09H
    INT 21H
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN