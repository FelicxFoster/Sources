;����data���е�һ�����ݵ����η�
;��������ں���һ��dword��Ԫ��

assume cs:code,ds:data

data segment
	dw 1,2,3,4,5,6,7,8
	dd 8 dup(0)
data ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov si,0   ;si����������һ������
		mov di,0   ;���ڿ��Ʊ�����
		
		mov cx,8
	s:	mov bx,[si]  ;bx��Ϊ�β�
		call cube
		mov 16[di],ax    ;��16λ
		mov 16[di+2],dx	 ;��16λ		
		
		add si,2
		add di,4
		loop s
		
		mov ax,4c00h
		int 21h
		
	cube:	mov ax,bx ;�ӳ������ڼ���bx��3�η�
		mul bx
		mul bx   ;16λ�˷���������α�����dx��ax��
		
		ret
		
code ends
end start