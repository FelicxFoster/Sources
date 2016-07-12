
assume cs:code

data segment
	db 'Welcome to masm!',0
data ends

code segment 
start:		mov ax,data
			mov ds,ax
			mov dh,8        ;行  
			mov dl,3		;列  80*2*7 + 3*2 = 466H
			mov cl,2		;颜色
			mov si,0		;字符串首地址
			
			call show_str
			
			mov ax,4c00h
			int 21h
			
	
  show_str:	push cx
			push si
			
			mov al,0a0h    ;a0h = 160
			
			dec dh	    ;行数减1
			mul dh      ;行数 * 每行长度
			
			mov bx,ax   ;偏移地址放到bx
			
			mov al,2     ;每列占两个字节
			mul dl
			sub ax,2     ;因为下标从0开始，又因为偶字节存放颜色，所以减2
			
			add bx,ax    ;加到bx中，得到第一个字符的偏移地址
			
			mov ax,0b800h  ;显存开始段地址
			mov es,ax
			
			mov di,0       ;di指向显存的偏移地址
			
			mov al,cl      ;al获取颜色,因为下cl要用来存放字符
			
			mov ch,0	   ;下边开始存放
			
		s：	mov cl,ds:[si]  ;cl获得字符 
			
			jcxz ok			;当字符为0时,跳转
			
			mov es:[bx+di],cl   ;偶数位 放字符
			mov es:[bx+di+1],al	;奇数位 放颜色
			
			inc si
			
			add di,2     ;指向下个字符
			jmp short s  ;无条件跳转
			
			
		ok:	pop si
			pop cx
			
			ret		;子程序结束
		

code ends
end start