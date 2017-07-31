.model small
.stack 100H
.data
N1 DB 05
n2 DB 02
N3 DB ?
.code
START: mov AX,@data
       mov DS,AX
       mov AL,N1
       mov ah,00h
       mov BL,N2
       rol Al,04H
       or al,bl
       mov N3,al
       mov AH,4CH
       int 21H
END START
END
