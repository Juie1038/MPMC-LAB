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


mov ah, 01h
int 21h
sub al, 30h
mov cl, al


mov al, bl

cmp bh, al
jle skip1
mov al, bh

skip1:
cmp cl, al
jle skip2
mov al, cl

skip2:


xor ah, ah
add al, 30h

mov dl, al
mov ah, 02h
int 21h

mov ah, 4Ch
int 21h