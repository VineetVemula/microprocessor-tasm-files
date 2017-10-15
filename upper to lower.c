#include&lt;stdio.h&gt;
#include&lt;conio.h&gt;
void main(){
int i;
char s1[10]={&#39;A&#39;,&#39;B&#39;,&#39;C&#39;,&#39;$&#39;};
char s2[10];
clrscr();
asm{
lea si,s1
lea di,s2
mov cx,04H
}
up:asm{
mov ax,[si]
add ax,20H
mov [di],ax
inc si
inc di
dec cx
jnz up
}
printf(&quot;Lower case\n&quot;);
for(i=0;i&lt;3;i++)
printf(&quot;%c &quot;,s2[i]);
getch();
}
