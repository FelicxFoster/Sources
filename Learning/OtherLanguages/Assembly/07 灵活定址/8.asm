;将data段中每个单词改为大写字母

assume cs:code,ds:data

data segment
	db 'ibm             '  ;16 bytes
	db 'dec    		    '
	db 'dos	            '
	db 'vax		        '
data ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov bx,0    ;外层循环 行 4
		mov si,0    ;内层循环 列 3
		
		mov cx,4
	s:	mov dx,cx    ;用dx保存外层循环的cx
		
			mov cx,3
	    t:	mov al,[bx+si]
			add al,11011111b
			mov [bx+si],al
			inc si
			loop t
			
		add bx,16
		mov cx,dx    ;再恢复cx
		loop s 
		
		mov ax,4c00h
		int 21h
code ends
end start