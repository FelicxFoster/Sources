assume cs:code 

code segment
start:		
			mov ax,cs
			mov ds,ax
			mov si,offset do0      ;����es:diָ��Ŀ�ĵ�ַ
			
			mov ax,0
			mov es,ax
			mov di,200h             ;����ds:siָ��Դ��ַ
			
			mov cx,do0���ִ��볤��  ;����cxΪ���䳤��
			cld                     ;���ô��䷽��Ϊ��
			rep movsb
			
			;�����ж�������
			
			mov ax,4c00h
			int 21h
			
do0:		;��ʾ�ַ���"Welcome to Fishc.com! "
			
			mov ax,4c00h
			int 21h
			
code ends
end start