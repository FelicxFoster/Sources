assume cs:code,ss:stack

stack segment
	dw 8 dup(0)
stack ends


code segment
start:		mov ax,stack
			mov ss,ax
			mov sp,16
			
			mov ax,4240h  ;�������� ��16λ			
			mov dx,0fh	  ;�������� ��16λ		
			mov cx,0ah    ;����
			
			
			call divdw
			
			mov ax,4c00h
			int 21h
			
	
	divdw:	push ax		;��16λ���ȱ���
			
			mov ax,dx	;ax��ʱ���ֵ�Ǹ�16λ��
			
			mov dx,0    ;��0����Ϊ�˲�Ӱ���±�����λ,Ҳʹ��16λΪ0
			
			div cx	    ;H/N 
			
			mov bx,ax   ;bx��ֵΪ(int)H/N,
						;dx��ֵΪrem H/N
			
			pop ax      ;ax��ֵ��ΪL
			
			div cx		;L/N, ע�⣺16λ������ʱ��
						;Ĭ�ϱ�����dxΪ��16λ,axΪ��16
						
			mov cx,dx	;cx�������
			
			mov dx,bx	;dx��Ž���ĸ�16λ
						;ax��Ž���ĵ�16λ
			
			ret			;����


code ends
end start