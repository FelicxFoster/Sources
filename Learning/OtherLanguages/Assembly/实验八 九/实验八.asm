;分析程序

assume cs:codesg
codesg segment
		
		mov ax,4c00h     ;5 刚好跳到这里
		int 21h
		
start:	mov ax,0

	s:	nop              ;4 两个nop正好2个字节 接收到s2处的机器码    
		nop				   ;相当于jump -10
		mov di,offset s
		mov si,offset s2
		mov ax,cs:[si]   ;1 把cs段，s2偏移地址处的机器码 赋值给ax
		mov cs:[di],ax   ;2 再赋值给 cs段 偏移地址s处

	s0:	jmp short s      ;3 跳转到s处
	
	s1:	mov ax,0	    ;s1 长度为10个字节 4+2+4
		int 21h
		mov ax,0
		
	s2: jmp short s1    ; 机器码：F6EB    相当于jump -10
		nop

codesg ends
end start