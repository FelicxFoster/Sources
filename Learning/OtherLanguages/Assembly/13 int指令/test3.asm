;编程：安装7ch中断例程
;功能：将一个全是字母，以0结尾的字符串转化为大写
;参数：ds:si指向字符串的首地址

assume cs:code

code segment
start:
			mov ax,cs
			mov ds,ax
			mov si,offset capital
			
			mov ax,0
			mov es,ax
			mov di,200h
			
			mov cx,offset capitalend - offset capital
			cld
			rep movsb			
			
			mov ax,0
			mov es,ax
			mov word ptr es:[7ch*4],200h
			mov word ptr es:[7ch*4+2],0
			
			mov ax,4c00h
			int 21h

  capital:	
			push cx		;可能会影响外部的，因此用之前先保存
			push si     ;相当于局部变量
			
		change:	mov cl,[si]
			mov ch,0
			jcxz ok
			
			and byte ptr [si],11011111b			
			inc si
			
			jmp short change 
			
		ok:	
			pop si
			pop cx
			
			iret
			
capitalend:	nop


code ends
end start