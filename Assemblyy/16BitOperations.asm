; commit changes

.MODEL SMALL
.STACK 100H

.DATA
    NUM1        DW 1234H        
    NUM2        DW 5678H        

    SUM         DW ?            
    CARRY_FLAG  DB ?            

    DIFF        DW ?            
    BORROW_FLAG DB ?            

    PROD_LOW    DW ?            
    PROD_HIGH   DW ?            

    QUOT        DW ?            
    REM         DW ?            

    AND_RES     DW ?            
    OR_RES      DW ?            

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, NUM1
    ADD AX, NUM2
    MOV SUM, AX
    MOV CARRY_FLAG, 0
    JNC ADD_DONE
    MOV CARRY_FLAG, 1
ADD_DONE:

    MOV AX, NUM1
    SUB AX, NUM2
    MOV DIFF, AX
    MOV BORROW_FLAG, 0
    JNC SUB_DONE
    MOV BORROW_FLAG, 1
SUB_DONE:

    MOV AX, NUM1
    MOV BX, NUM2
    MUL BX                  
    MOV PROD_LOW, AX
    MOV PROD_HIGH, DX       

    MOV AX, NUM1
    MOV DX, 0               
    MOV BX, NUM2
    DIV BX                  
    MOV QUOT, AX
    MOV REM, DX

    MOV AX, NUM1
    AND AX, NUM2
    MOV AND_RES, AX

    MOV AX, NUM1
    OR AX, NUM2
    MOV OR_RES, AX

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
