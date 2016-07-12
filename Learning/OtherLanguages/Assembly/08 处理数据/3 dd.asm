;用div计算data段中 第一个数据除以第二个数据
;商存放到第三个数据中

assume cs:code,ds:data

data segment
	dd 100001
	dw 100
	dw 0
data ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov ax,ds:[0]  ;低16位
		mov dx,ds:[2]  ;高16位
		
		mov bx,ds:[4]  ;or  div word ptr ds:[4]
		div bx
		
		mov ds:[6],ax  ;ax中为商
		
		mov ax,4c00h
		int 21h
code ends
end start 