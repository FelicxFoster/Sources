;��������

assume cs:codesg
codesg segment
		
		mov ax,4c00h     ;5 �պ���������
		int 21h
		
start:	mov ax,0

	s:	nop              ;4 ����nop����2���ֽ� ���յ�s2���Ļ�����    
		nop				   ;�൱��jump -10
		mov di,offset s
		mov si,offset s2
		mov ax,cs:[si]   ;1 ��cs�Σ�s2ƫ�Ƶ�ַ���Ļ����� ��ֵ��ax
		mov cs:[di],ax   ;2 �ٸ�ֵ�� cs�� ƫ�Ƶ�ַs��

	s0:	jmp short s      ;3 ��ת��s��
	
	s1:	mov ax,0	    ;s1 ����Ϊ10���ֽ� 4+2+4
		int 21h
		mov ax,0
		
	s2: jmp short s1    ; �����룺F6EB    �൱��jump -10
		nop

codesg ends
end start