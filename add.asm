.model small
.stack 100H
.data
a dw 1111h
b dw 2222H
c dw ?
.code
start:mov ax,@data
      mov ds,ax
      mov ax,a
      mov bx,b
      add ax,bx
      jnc DOWN
      inc cx
 DOWN:mov c,ax
      mov c+2,cx
      mov AH,4CH
      int 21H
end start
end
