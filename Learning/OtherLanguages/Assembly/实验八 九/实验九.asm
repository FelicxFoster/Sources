assume cs:code,ds:data,ss:stack

data segment
	db 'Welcome to msam!'  ;16���ַ�
	db 02h,24h,71h      		;������ɫ����
data ends

stack segment
	dw 8 dup(0)   ;������������
stack ends

code segment
start:	mov ax,data
		mov ds,ax
		
		mov ax,stack
		mov ss,ax
		mov sp,10h

		xor bx,bx       ;bx���㣬����������ɫ
		mov ax,0b872h	;��12���м�ε���ʼλ��  B8000+720 ����һλ
		
		mov cx,3 
s3:		push cx    
		push ax
		push bx
		
		mov es,ax       ;��ʱ esΪ��Ļ��12���м���Դ����ʼλ��
				
		mov si,0		;si���������ַ�����
		mov di,0		;di������λĿ����
		
		mov cx,10h		;��ʾ�ַ�
	s1:	mov al,[si]		;ż���� ����ASCII			
		mov es:[di],al
		inc si
		add di,2
		loop s1
		
		
		mov di,1    	 ;ת��������
		pop bx			 ;��ȡ��ɫ����
		mov al,10h[bx]
		inc bx			 ;bxָ����һ����ɫ����
		
		mov cx,10h
	s2:	mov es:[di],al	  ;������ ������ɫ����
		add di,2
		loop s2
		
		
		pop ax			;ȡ��ax��ָ����һ��
		add ax,10h
		
		pop cx			;ȡ��cx������ѭ���ж�
		loop s3
		
		
		mov ax,4c00h
		int 21h
code ends
end start