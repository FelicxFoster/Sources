;����Ļ�м�������ʾa-z�����˿��壬ESC�ı���ɫ

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
		
		mov dx,1000h   ;ѭ��1000,0000h��
		mov ax,0
		
	s1:	sub ax,1   ;ax=0-1=FFFF CF=1
		sbb dx,0   ;axÿ��10000h�Σ��Ż����һ��CF=1,dx�ż�1
		cmp ax,0 
		jne s1
		
		cmp dx,0 
		jne s1
		
		pop ax
		pop dx
		ret

code ends
end start