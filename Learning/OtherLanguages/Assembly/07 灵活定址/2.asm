;ͨ��and��orָ�ʵ�ִ�Сдת��
;ת��ΪСд or x,00100000b   20h  32
;ת��Ϊ��д and x,11011111b  DFh  223

;����һ���ַ���ת��Ϊ��д���ڶ����ַ���ת��ΪСд
assume cs:code, ds:a

a segment
	db 'BaSiC'
	db 'MinIX'
a ends

code segment
start:	mov ax,a
		mov ds,ax

		mov bx,0
		
		mov cx,5
	s:  mov al,ds:[bx]     ;0[bx] [bx].0
		and al,11011111b
		mov ds:[bx],al
		
		mov al,ds:[bx+5]    ;5[bx]  [bx].5
		or al,00100000b
		mov ds:[bx+5],al
		
		inc bx
		loop s
		


		mov ax,4c00h
		int 21h
code ends
end start
