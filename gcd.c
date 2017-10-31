
#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
{
	int a,b,res;
	clrscr();
	printf("Enter two numbers\n");
	scanf("%d%d",&a,&b);
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
 asm{
 		sub bx,ax
 		}
	chk:
	asm{
		cmp ax,bx
		jnz bck
		mov res,ax
		}
	printf("GCD is %d",res);
	getch();
}
