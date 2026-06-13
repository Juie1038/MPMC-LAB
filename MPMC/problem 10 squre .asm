org 100h

jmp start

start:

mov cx, 5        

outer:

    mov bx, 5    

inner:

    mov dl, '*'
    mov ah, 02h
    int 21h

    dec bx
    jnz inner

    mov dl, 10
    mov ah, 02h
    int 21h

    mov dl, 13
    mov ah, 02h
    int 21h

    loop outer

mov ah, 4Ch
int 21h
