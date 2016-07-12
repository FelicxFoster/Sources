;通过and和or指令，实现大小写转换
;转换为小写 or x,00100000b   20h  32
;转换为大写 and x,11011111b  DFh  223

;将第一个字符串转换为大写，第二个字符串转换为小写
assume cs:code, ds:a

a segment
	db 'BaSiC'
	db 'MinIX'
a ends

code segment
start:	mov ax,a
		mov ds,ax

		mov bx,0
		
		mov cx,5
	s:  mov al,ds:[bx]     ;0[bx] [bx].0
		and al,11011111b
		mov ds:[bx],al
		
		mov al,ds:[bx+5]    ;5[bx]  [bx].5
		or al,00100000b
		mov ds:[bx+5],al
		
		inc bx
		loop s
		


		mov ax,4c00h
		int 21h
code ends
end start
