org 100h

jmp start

start:


mov ah, 01h
int 21h
sub al, 30h
mov cl, al

xor bl, bl   

loop_start:


mov ah, 01h
int 21h
sub al, 30h

add bl, al

loop loop_start


add bl, 30h
mov dl, bl
mov ah, 02h
int 21h

mov ah, 4Ch
int 21h