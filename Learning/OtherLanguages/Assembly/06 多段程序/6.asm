;编写code段，用push指令将a段中的前8个
;字型数据逆序存储到b段中

assume cs:code

a segment
	dw 1,2,3,4,5,6,7,8,9,0ah,0bh,0ch,0dh,0eh,0fh,0ffh
a ends

b segment
	dw 0,0,0,0,0,0,0,0
b ends

code segment
start:	mov ax,a
		mov ds,ax 
		
		mov ax,b 
		mov ss,ax
		mov sp,8
		
		mov bx,0
		mov cx,8
	s:	mov ax,ds:[bx]
		push ax
		add bx,2
		loop s		

code ends
end start