;编程：安装7ch中断例程
;功能：实现loop相同的功能
;参数：cx为循环次数，bx为相对位移

assume cs:code

code segment
start:		
			mov ax,cs
			mov ds,ax
			mov si,offset myloop
			
			mov ax,0
			mov es,ax
			mov di,200h
			
			mov cx,offset lpend - offset lp
			cld 
			movsb
			
			mov ax,0
			mov es,ax
			mov word ptr es:[7ch*4],200h
			mov word ptr es:[7ch*4+2],0
			
			mov ax,4c00h
			int 21h


	lp:		push bp		;凡是子程序中要用到的寄存器都要先入栈保存
			mov bp,sp	;用bp指向栈
			
			dec cx
					
			jcxz lpret
			add [bp+2],bx ;[bp+2] == [ip]	
				
    lpret:
			pop bp
			iret	;此时取出的ip已经变为ip+bx了(bx为负数)
			
lpend:	nop			


code ends
end start 