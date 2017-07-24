.model small
.stack 100H
.data
a dw 2222H
b dw 5555H
c dw ?
.code
start:
mov ax,@data
mov ds,ax
mov ax,a
mov bx,b
sbb ax,bx
mov c,ax
mov AH,4CH
int 21H
end start
end
