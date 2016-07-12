;传地址
assume cs:code

data segment
	db 'conversation'  ;21 bytes
data ends

code segment
start:		mov ax,data
			mov ds,ax
			
			mov si,0   ;字符串首地址
			mov cx,12  ;字符串长度
			
			call capital
			
			mov ax,4c00h
			int 21h
						
  capital:	and byte ptr [si],11011111b
			inc si
			loop capital
			
			ret

code ends
end start