; commit changes

.MODEL SMALL
.STACK 100H

.DATA
    NUM1        DB 34H          
    NUM2        DB 56H          

    SUM         DB ?
    CARRY_FLAG  DB ?

    DIFF        DB ?
    BORROW_FLAG DB ?

    PROD        DW ?            

    QUOT        DB ?
    REM         DB ?

    AND_RES     DB ?
    OR_RES      DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM1
    ADD AL, NUM2
    MOV SUM, AL
    MOV CARRY_FLAG, 0
    JNC ADD_DONE
    MOV CARRY_FLAG, 1
ADD_DONE:

    MOV AL, NUM1
    SUB AL, NUM2
    MOV DIFF, AL
    MOV BORROW_FLAG, 0
    JNC SUB_DONE
    MOV BORROW_FLAG, 1
SUB_DONE:

    MOV AL, NUM1
    MOV BL, NUM2
    MUL BL                  
    MOV PROD, AX

    MOV AX, PROD             
    MOV BL, NUM2
    DIV BL                  
    MOV QUOT, AL
    MOV REM, AH

    MOV AL, NUM1
    AND AL, NUM2
    MOV AND_RES, AL

    MOV AL, NUM1
    OR AL, NUM2
    MOV OR_RES, AL

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN