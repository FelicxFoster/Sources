;��div����data���� ��һ�����ݳ��Եڶ�������
;�̴�ŵ�������������

assume cs:code,ds:data

data segment
	dd 100001
	dw 100
	dw 0
data ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov ax,ds:[0]  ;��16λ
		mov dx,ds:[2]  ;��16λ
		
		mov bx,ds:[4]  ;or  div word ptr ds:[4]
		div bx
		
		mov ds:[6],ax  ;ax��Ϊ��
		
		mov ax,4c00h
		int 21h
code ends
end start 