.model small
.stack 100h
.data
str db "wow","$"
strlen dw $-str
strrev dw 20 dup('')
str_palin db "it is palindrome","$"
str_not_palin db "it is not palindrome"
.code
start:mov ax,@data
      mov ds,ax
      mov es,ax
      mov cx,strlen
      add cx,-2
      lea si,str
      lea di,strlen
      add si,strlen
      add si,-2
l1:mov al,[si]
   mov[di],al
   dec si
   inc di
   loop l1
   mov al,[si]
   mov [di],al
   inc di
   mov al,"$"
   mov [di],dl
check:lea si,str
      lea di,strrev
      cmpsb
      je palin
      jne not_palin
palin:mov ah,09h
      lea dx,str_palin
      int 21h
      jmp exit
not_palin:mov ah,09h
          lea dx,str_not_palin
          int 21h
exit:mov ah,04h
     int 21h
end start
end
