;��һ��ȫ����ĸ����0��β���ַ�����ת��Ϊ��д

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
			
  capital�� mov cl,[si]  ;cxΪ16λ����Ҫ�ֱ�ֵ
			mov ch,0
			
			jcxz ok       ;����Ƿ�Ϊ0
			
			and byte ptr [si],11011111b
			inc si
			jmp short capital  ;��������ת
		
		ok:	ret
				
code ends
end start