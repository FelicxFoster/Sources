;����Debug�鿴�ڴ棬�������
;2000:1000    BE 00 06 00 00......
;д������ִ�к�ax��bx,cx�е�����

assume cs:code, ds:data

code segment
start:	mov ax,2000h
		mov ds,ax
		mov bx,1000h    ;bx=1000
				
		mov si,0
		mov ax,[bx+si]  ;ax=00BE
		
		inc si
		mov cx,[bx+si]	;cx=0600
		
		inc si		
		mov di,si
		add cx,[bx+di]	;cx=0600+0006=0606

		
		mov ax,4c00h    ;ax=4c00
		int 21h
code ends
end start