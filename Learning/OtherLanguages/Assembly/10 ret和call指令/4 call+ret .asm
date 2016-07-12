assume cs:code

code segment
start:	mov ax,1   ;1 ax=1
		mov cx,3   ;2 cx=3
		
		call s		;3 push IP, jmp s
		
		mov bx,ax    ;8 bx=8
		mov ax,4c00h ;9 
		int 21h		 ;10
		
	s:	add ax,ax    ;4 ax=2,cx=3 ->5 ax=4,cx=2 ->6 ax=8,cx=1
		loop s
		
		ret			 ;7 pop IP, jmp call next
		
code ends
end start