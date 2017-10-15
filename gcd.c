#include&lt;stdio.h&gt;
#include&lt;conio.h&gt;
#include&lt;math.h&gt;
void main()
{
int a,b,res;
clrscr();
printf(&quot;Enter two numbers\n&quot;);
scanf(&quot;%d%d&quot;,&amp;a,&amp;b);
asm{
mov ax,a
mov bx,b
}
bck:
asm{
cmp ax,bx
jc second
}

first:
asm{
sub ax,bx
jmp chk
}
second:

Department of Computer Engineering Exp. No. 9

asm{
sub bx,ax
}
chk:
asm{
cmp ax,bx
jnz bck
mov res,ax
}
printf(&quot;GCD is %d&quot;,res);
getch();
}
