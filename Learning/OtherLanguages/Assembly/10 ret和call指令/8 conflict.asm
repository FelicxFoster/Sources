;把一个全是字母，以0结尾的字符串，转化为大写

assume cs:code 

data segment
	db 'conversation',0
data ends

code segment
start:		mov ax,data
			mov ds,ax
			
			mov si,0
			
			call capital
			
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