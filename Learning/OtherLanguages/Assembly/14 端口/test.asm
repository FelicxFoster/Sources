;��Ļ�м���ʾ��ǰ�·�

assume cs:code 

code segment
start:		
		mov al,8	 ;оƬ��8�ŵ�Ԫ
		out 70h,al   ;��70h�˿�д��Ҫ���ʵ�8��Ԫ��ַ
		in al,71h	 ;��71�˿ڶ�ȡ8�ŵ�Ԫ�е�����
		
		mov ah,al    ;��BCD����ת����ʮ����
		mov cl,4
		shr ah,cl			;ahΪʮλ����ֵ���ѵ�4λ����
		and al,00001111b	;alΪ��λ����ֵ���Ѹ�4λ����
		
		add ah,30h
		add al,30h
		
		mov bx,0b800h
		mov es,bx
		mov word ptr es:[160*12+40*2],ah
		mov word ptr es:[160*12+40*2+2],al
		
		mov 4c00h
		int 21h
		
code ends
end start