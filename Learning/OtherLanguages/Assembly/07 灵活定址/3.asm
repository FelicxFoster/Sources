;�üĴ���si��diʵ�ֽ���һ���ַ���
;���Ƶ����������������

assume cs:code, ds:data

data segment
	db 'welcome to masn!'
	db '................'
data ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov si,0    ;ָ��ԭʼλ��  source
		mov di,16   ;ָ��Ŀ��λ��  destination
		
		mov cx,8	;��16λ�Ĵ�����һ��2���ֽ�
 	s:  mov ax,[si]  ;Ĭ��Ϊds   ==  ds:[si]
		mov [di],ax
		add si,2
		add di,2
		
		loop s
		
		mov ax,4c00h
		int 21h
code ends
end start