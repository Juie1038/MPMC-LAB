.MODEL SMALL
.STACK 100H

.DATA
msg1 DB "Enter a character: $"
msg2 DB 0DH,0AH,"You entered: $"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    
    LEA DX, msg1
    MOV AH, 09H
    INT 21H

    
    MOV AH, 01H
    INT 21H
    MOV BL, AL

    
    LEA DX, msg2
    MOV AH, 09H
    INT 21H

    
    MOV DL, BL
    MOV AH, 02H
    INT 21H

    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN