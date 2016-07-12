;在屏幕中间依次显示a-z，让人看清，ESC改变颜色

assume cs:code 
code segment 
start:	
		mov ax,0b800h
		mov es,ax
		mov ah,'a'
	s:	mov es:[160*12+40*2],ah
		call delay
		inc ah
		cmp ah,'z'
		jna s
		
		mov ax,4c00h
		int 21h
		
delay:	push ax
		push dx
		
		mov dx,1000h   ;循环1000,0000h次
		mov ax,0
		
	s1:	sub ax,1   ;ax=0-1=FFFF CF=1
		sbb dx,0   ;ax每减10000h次，才会产生一次CF=1,dx才减1
		cmp ax,0 
		jne s1
		
		cmp dx,0 
		jne s1
		
		pop ax
		pop dx
		ret

code ends
end start