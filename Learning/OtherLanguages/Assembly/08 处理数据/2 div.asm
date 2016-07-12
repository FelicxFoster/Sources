;利用div指令计算100001/100
;FFFFh == 65536
assume cs:code

code segment
start:	mov ax,86a1h
		mov dx,0001h
		
		mov bx,100
		div bx

		mov ax,4c00h
		int 21h
code ends
end start


;利用div指令计算1001/100
assume cs:code

code segment
start:	mov ax,1001
		
		mov bl,100
		
		div bl

		mov ax,4c00h
		int 21h
code ends
end start