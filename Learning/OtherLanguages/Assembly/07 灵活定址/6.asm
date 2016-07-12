;假设Debug查看内存，结果如下
;2000:1000    BE 00 06 00 6A 22 ......
;写出程序执行后，ax，bx,cx中的内容

assume cs:code, ds:data

code segment
start:	mov ax,2000h
		mov ds,ax
		mov bx,1000h    
				
		mov si,0
		mov ax,[bx+2+si]  ;ax=0006
		
		inc si
		mov cx,[bx+2+si]	;cx=6A00
		
		inc si		
		mov di,si
		mov bx,[bx+2+di]	;bx=226A

		
		mov ax,4c00h  
		int 21h
code ends
end start