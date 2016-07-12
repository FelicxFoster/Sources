;编程：将data段中的字符串转化为大写

assume cs:code,ds:data

data segment
	db 'conversation'
data ends

code segment
start:		mov ax,data
			mov ds,ax
			mov si,0
			
			mov cx,12
		s:	mov bl,[si]  ;bl接收一个字符
			call convert
			mov [si],bl  ;替换原字符
			inc si		 ;指向下一个字符
			loop s
		
  convert:	and bl,11011111b  ;转化为大写
			ret
code ends
end start