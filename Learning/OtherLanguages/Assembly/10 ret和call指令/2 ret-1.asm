assume cd:codesg

stack segment
	db 16 dup(0)
stack ends

codesg segment
		mov ax,4c00h
		int 21h
start:	mov ax, stack
		mov ss,ax
		mov sp,16
		
		mov ax,0
		
		push cs
		push ax
		
		mov bx,0  ;这是干甚的
		retf    ; 相当于pop ax , IP = ax   
				;   接着pop ax,  CS = ax
codesg ends
end start