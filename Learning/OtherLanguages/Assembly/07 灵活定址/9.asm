;��data����ÿ�����ʸ�Ϊ��д��ĸ

assume cs:code,ds:data

data segment
	db 'ibm             '  ;16 bytes
	db 'dec    		    '
	db 'dos	            '
	db 'vax		        '
	dw 0        ;����һ���֣���������cx
data ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov bx,0    ;���ѭ�� �� 4
		mov si,0    ;�ڲ�ѭ�� �� 3
		
		mov cx,4
	s:	mov ds:[40h],cx    ;���ڴ汣�����ѭ����cx
		
			mov cx,3
	    t:	mov al,[bx+si]
			add al,11011111b
			mov [bx+si],al
			inc si
			loop t
			
		add bx,16
		mov cx,ds:[40h]    ;�ٻָ�cx
		loop s 
		
		mov ax,4c00h
		int 21h
code ends
end start