;����FFFF:0006��Ԫ�е�������3, ����洢��dx��

assume cs:code
code segment
start:	mov ax, 0ffffh  ;
		mov ds, ax
		mov bx, 6h
	
		mov al,[bx]
		mov ah, 0   ;ֱ���� mov ax, [bx]Ҳû����
		mov dx, 0
	
		mov cx, 3
	s:  add dx, ax
		loop s	
		
		mov ax, 4c00h
		int 21h
code ends
end start
