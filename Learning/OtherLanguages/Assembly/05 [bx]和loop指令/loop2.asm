;计算ffff:0 - ffff:b 单元中的数据的和， 结果存储到dx中

assume cs:code
code segment
		mov ax,0ffffh
		mov ds,ax
		mov bx,0    ;偏移地址用变量存储
		
		mov dx,0
	
		mov cx,12
	s:  mov al,[bx]
		mov ah,0
		add dx,ax
		inc bx
		loop s
		
		mov ax,4c00h
		int 21h

code ends
end