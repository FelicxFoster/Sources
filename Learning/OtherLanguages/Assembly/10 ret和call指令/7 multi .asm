;��̣���data���е��ַ���ת��Ϊ��д

assume cs:code,ds:data

data segment
	db 'conversation'
data ends

code segment
start:		mov ax,data
			mov ds,ax
			mov si,0
			
			mov cx,12
		s:	mov bl,[si]  ;bl����һ���ַ�
			call convert
			mov [si],bl  ;�滻ԭ�ַ�
			inc si		 ;ָ����һ���ַ�
			loop s
		
  convert:	and bl,11011111b  ;ת��Ϊ��д
			ret
code ends
end start