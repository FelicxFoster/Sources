;将data段中每个单词改为大写字母

assume cs:code,ds:data,ss:stack
data segment
	db 'ibm             '  ;16 bytes
	db 'dec    		    '
	db 'dos	            '
	db 'vax		        '
data ends

stack segment   ;定义一个段，用来作栈段，16 bytes
	dw 0,0,0,0,0,0,0,0
stack ends

code segment
start:	mov ax,stack   ;绑定栈段，设置栈顶指针
		mov ss,ax
		mov sp,16

		mov ax,data
		mov ds,ax
		
		mov bx,0    ;外层循环 行 4
		mov si,0    ;内层循环 列 3
		
		mov cx,4
	s:	push cx    ;用stack保存外层循环的cx
		
			mov cx,3
	    t:	mov al,[bx+si]
			add al,11011111b
			mov [bx+si],al
			inc si
			loop t
			
		add bx,16
		pop cx    ;再恢复cx
		loop s 
		
		mov ax,4c00h
		int 21h
code ends
end start