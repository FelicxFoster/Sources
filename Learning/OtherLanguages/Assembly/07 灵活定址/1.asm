;ͨ��and��orָ�ʵ�ִ�Сдת��
;ת��ΪСд or x,00100000b   20h  32
;ת��Ϊ��д and x,11011111b  DFh  223

assume cs:code, ds:a

a segment
	db 'BaSiC'
	db 'iNfOrMaTiOn'
a ends

code segment
start:	mov ax,a
		mov ds,ax

		mov bx,0
		mov cx,5
	s:  mov al,ds:[bx]
		and al,20h
		mov ds:[bx],al
		
		inc bx
		loop s
		
		mov bx,5
		mov cx,11
	s:  mov al,ds:[bx]
		or al,00100000b
		mov ds:[bx],al
		
		inc bx
		loop s

		mov ax,4c00h
		int 21h
code ends
end start
