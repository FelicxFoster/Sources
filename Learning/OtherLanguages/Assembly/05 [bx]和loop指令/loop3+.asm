;将内存ffff:0~ffff:b单元中的数据拷贝到0:200~0:20b单元中

assume cs:code
code segment
		mov bx,0
		mov cx,12
	s:  mov ax,0ffffh
		mov ds,ax
		mov dl,[bx]
		mov ax,0020h
		mov ds,ax
		mov [bx],dl
		inc bx
		loop s
		
		mov ax,4c00h
		int 21
code ends
end