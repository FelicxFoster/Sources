;用寄存器si和di实现将第一个字符串
;复制到它后面的数据区中

assume cs:code, ds:data

data segment
	db 'welcome to masn!'
	db '................'
data ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov si,0    ;用数组的思维：0[si] 16[si]
		
		mov cx,8	;用16位寄存器，一次2个字节
 	s:  mov ax,0[si]  
		mov 16[si],ax
		add si,2
		
		loop s
		
		mov ax,4c00h
		int 21h
code ends
end start