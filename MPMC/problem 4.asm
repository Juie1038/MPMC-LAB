org 100h

jmp start

msg1 db "Enter first number: $"
msg2 db 0Dh,0Ah,"Enter second number: $"
msg3 db 0Dh,0Ah,"Result: $"

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

    mov al, bl
    mul bh         
 
    mov bx, ax
    
    mov dx, offset msg3
    mov ah, 09h
    int 21h

    mov ax, bx
    mov cx, 0
    mov bx, 10

convert_loop:
    xor dx, dx
    div bx
    push dx
    inc cx
    cmp ax, 0
    jne convert_loop

print_loop:
    pop dx
    add dl, 30h
    mov ah, 02h
    int 21h
    loop print_loop
 
    mov ah, 4Ch
    int 21h