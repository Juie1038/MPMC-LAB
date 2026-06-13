org 100h

jmp start

start:

mov cx, 5        
mov bl, 1        

outer:

    push cx

    
    mov al, 5
    sub al, bl
    mov cl, al

space_loop:
    cmp cl, 0
    je star_loop

    mov dl, ' '
    mov ah, 02h
    int 21h

    dec cl
    jmp space_loop

star_loop:

    mov bh, bl

print_star:
    cmp bh, 0
    je newline

    mov dl, '*'
    mov ah, 02h
    int 21h

    dec bh
    jmp print_star

newline:

    mov dl, 10
    mov ah, 02h
    int 21h

    mov dl, 13
    mov ah, 02h
    int 21h

    inc bl
    pop cx
    loop outer

mov ah, 4Ch
int 21h