;��data����ÿ�����ʸ�Ϊ��д��ĸ

assume cs:code,ds:data,ss:stack
data segment
	db 'ibm             '  ;16 bytes
	db 'dec    		    '
	db 'dos	            '
	db 'vax		        '
data ends

stack segment   ;����һ���Σ�������ջ�Σ�16 bytes
	dw 0,0,0,0,0,0,0,0
stack ends

code segment
start:	mov ax,stack   ;��ջ�Σ�����ջ��ָ��
		mov ss,ax
		mov sp,16

		mov ax,data
		mov ds,ax
		
		mov bx,0    ;���ѭ�� �� 4
		mov si,0    ;�ڲ�ѭ�� �� 3
		
		mov cx,4
	s:	push cx    ;��stack�������ѭ����cx
		
			mov cx,3
	    t:	mov al,[bx+si]
			add al,11011111b
			mov [bx+si],al
			inc si
			loop t
			
		add bx,16
		pop cx    ;�ٻָ�cx
		loop s 
		
		mov ax,4c00h
		int 21h
code ends
end start