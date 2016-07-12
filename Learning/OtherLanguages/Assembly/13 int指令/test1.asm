assume cs:code

code segment

start:	
		mov ax,0b800h
		mov es,ax
		mov byte ptr es:[12*160+40*2],'!'
		
		int 0   ;主动引发0号中断

code ends

end start