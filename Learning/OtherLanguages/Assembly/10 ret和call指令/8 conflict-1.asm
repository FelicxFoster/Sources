;把data段字符串全部转化为大写

assume cs:code 

stack segment
	db 16 dup(0)
stack ends

data segment
	db 'word',0
	db 'unix',0
	db 'wind',0
	db 'good',0
data ends

code segment
start:		mov ax,data
			mov ds,ax
			
			mov ax,stack
			mov ss,ax
			mov sp,16
			
			mov si,0
			
			mov cx,4
		s:	push cx
			
			call capital
			
			pop cx
			loop s
			
			mov ax,4c00h
			int 21h 
			
  capital： mov cl,[si]  ;cx为16位，需要分别赋值
			mov ch,0
			
			jcxz ok       ;检测是否为0
			
			and byte ptr [si],11011111b
			inc si
			jmp short capital  ;无条件跳转
		
		ok:	ret
				
code ends
end start