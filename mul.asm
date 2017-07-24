.model small
.stack 100H
.data
a dw 4444h
b dw 0002H
c dw ?
.code
start:mov ax,@data
      mov ds,ax
      mov ax,a
      mov bx,b
      mul bx
      mov c,ax
      mov AH,4CH
      int 21H
end start
end
