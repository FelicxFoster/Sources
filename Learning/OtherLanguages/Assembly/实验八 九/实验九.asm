assume cs:code,ds:data,ss:stack

data segment
	db 'Welcome to msam!'  ;16个字符
	db 02h,24h,71h      		;三种颜色属性
data ends

stack segment
	dw 8 dup(0)   ;用来保存数据
stack ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov ax,stack
		mov ss,ax
		mov sp,10h

		xor bx,bx       ;bx清零，用来索引颜色
		mov ax,0b872h	;第12行中间段的起始位置  B8000+720 右移一位
		
		mov cx,3 
s3:		push cx    
		push ax
		push bx
		
		mov es,ax       ;此时 es为屏幕第12行中间的显存段起始位置
				
		mov si,0		;si用来索引字符的列
		mov di,0		;di用来定位目标列
		
		mov cx,10h		;显示字符
	s1:	mov al,[si]		;偶数行 保存ASCII			
		mov es:[di],al
		inc si
		add di,2
		loop s1
		
		
		mov di,1    	 ;转到奇数行
		pop bx			 ;提取颜色属性
		mov al,10h[bx]
		inc bx			 ;bx指向下一个颜色属性
		
		mov cx,10h
	s2:	mov es:[di],al	  ;奇数行 保存颜色属性
		add di,2
		loop s2
		
		
		pop ax			;取出ax，指向下一行
		add ax,10h
		
		pop cx			;取出cx，继续循环判断
		loop s3
		
		
		mov ax,4c00h
		int 21h
code ends
end start