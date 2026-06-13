org 100h

jmp start

start:


mov ah, 01h
int 21h
sub al, 30h
mov bl, al


mov ah, 01h
int 21h
sub al, 30h
mov bh, al


mov al, bl
xor ah, ah
div bh


mov bl, al


add bl, 30h


mov dl, bl
mov ah, 02h
int 21h


mov ah, 4Ch
int 21h