.MODEL SMALL
.STACK 100H

.DATA
    N        DB 5                          
    NUMS     DB 12H, 45H, 03H, 78H, 29H     
    SMALLEST DB ?
    BIGGEST  DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA SI, NUMS
    MOV AL, [SI]           
    MOV SMALLEST, AL
    MOV BIGGEST, AL

    MOV CL, N
    DEC CL                 
    INC SI                 

CHECK_LOOP:
    CMP CL, 0
    JE  DONE

    MOV AL, [SI]

    CMP AL, BIGGEST
    JLE CHECK_SMALL        
    MOV BIGGEST, AL

CHECK_SMALL:
    CMP AL, SMALLEST
    JGE NEXT                
    MOV SMALLEST, AL

NEXT:
    INC SI
    DEC CL
    JMP CHECK_LOOP

DONE:
    ; SMALLEST and BIGGEST now hold results
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN