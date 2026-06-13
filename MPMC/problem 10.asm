org 100h

jmp start

start:

mov cx, 5        
mov bl, 1       

outer_loop:

    mov dl, 10
    mov ah, 02h
    int 21h

    mov dl, 13
    mov ah, 02h
    int 21h

    mov bh, bl

inner_loop:

    mov dl, '*'
    mov ah, 02h
    int 21h

    dec bh
    jnz inner_loop

    inc bl
    loop outer_loop

mov ah, 4Ch
int 21h
