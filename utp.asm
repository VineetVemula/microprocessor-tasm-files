.model small
.stack 100H
.data
n1 DB 42H
p DB ?
.code
START: mov AX,@data
       mov DS,AX
       mov al,n1
       and al,0f0h
       mov bh,00h
       rol al,04H
       mov bl,al
       mov al,n1
       and al,0fh
       mov ah,4ch
       int 21H
END START
END
