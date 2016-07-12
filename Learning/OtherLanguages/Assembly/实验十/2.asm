assume cs:code,ss:stack

stack segment
	dw 8 dup(0)
stack ends


code segment
start:		mov ax,stack
			mov ss,ax
			mov sp,16
			
			mov ax,4240h  ;被除数的 低16位			
			mov dx,0fh	  ;被除数的 高16位		
			mov cx,0ah    ;除数
			
			
			call divdw
			
			mov ax,4c00h
			int 21h
			
	
	divdw:	push ax		;低16位，先保存
			
			mov ax,dx	;ax这时候的值是高16位了
			
			mov dx,0    ;置0，是为了不影响下边余数位,也使高16位为0
			
			div cx	    ;H/N 
			
			mov bx,ax   ;bx的值为(int)H/N,
						;dx的值为rem H/N
			
			pop ax      ;ax的值变为L
			
			div cx		;L/N, 注意：16位除法的时候，
						;默认被除数dx为高16位,ax为低16
						
			mov cx,dx	;cx存放余数
			
			mov dx,bx	;dx存放结果的高16位
						;ax存放结果的低16位
			
			ret			;返回


code ends
end start