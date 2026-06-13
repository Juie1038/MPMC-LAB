org 100h

jmp start

msg1 db "Enter first number: $"
msg2 db 0Dh,0Ah,"Enter second number: $"
msg3 db 0Dh,0Ah,"Smallest: $"

start:

    
    mov dx, offset msg1
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, al

   
    mov dx, offset msg2
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov bh, al

    
    cmp bl, bh
    jbe take_bl
    mov bl, bh

take_bl:

    
    mov dx, offset msg3
    mov ah, 09h
    int 21h

   
    mov dl, bl
    add dl, 30h

    mov ah, 02h
    int 21h

    
    mov ah, 4Ch
    int 21h