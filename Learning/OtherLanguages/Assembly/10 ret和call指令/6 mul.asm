;计算data段中第一组数据的三次方
;结果保存在后面一组dword单元中

assume cs:code,ds:data

data segment
	dw 1,2,3,4,5,6,7,8
	dd 8 dup(0)
data ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov si,0   ;si用于索引第一组数组
		mov di,0   ;用于控制保存编号
		
		mov cx,8
	s:	mov bx,[si]  ;bx作为形参
		call cube
		mov 16[di],ax    ;低16位
		mov 16[di+2],dx	 ;高16位		
		
		add si,2
		add di,4
		loop s
		
		mov ax,4c00h
		int 21h
		
	cube:	mov ax,bx ;子程序，用于计算bx的3次方
		mul bx
		mul bx   ;16位乘法，结果依次保存在dx，ax中
		
		ret
		
code ends
end start