;���ճ���
;���д˳���
;������������ֳ������ʱ���ͻᴥ���ó���

assume cs:code 

code segment
start:		
			mov ax,cs
			mov ds,ax
			mov si,offset do0      				;����es:diָ��Ŀ�ĵ�ַ
			
			mov ax,0
			mov es,ax
			mov di,200h             		    ;����ds:siָ��Դ��ַ
			
			mov cx,offset do0end - offset do0   ;����cxΪ���䳤��,���ñ������Զ�����
			cld                      			;���ô��䷽��Ϊ��
			rep movsb
			
			mov ax,0			;!�����ж�������
			mov es,ax
			mov word ptr es:[0*4],200h
			mov word ptr es:[0*4+2],0
			
			mov ax,4c00h
			int 21h
			
do0:		jmp short do0start			;ռ�����ֽ�
			db 'Welcome to Fishc.com!'	;��������ַ�����ƫ�Ƶ�ַΪ200h+2

d0start:
			mov ax,cs 				
			mov ds,ax
			mov si,202h					;����ds:siָ���ַ���
			
			mov ax,0b800h				;�Դ�ε�ַ
			mov es,ax
			mov di,12*160+36*2			;����es:siָ���Դ�ռ��м�λ��
			mov cx,21					;����cxΪ�ַ�������
			
		s:	mov al,[si]			 		;���ַ���д���Դ�ռ�
			mov es:[di],al
			
			inc si
			add di,1
			mov al,02h			;������ɫ
			mov es:[di],al

			add di,1
			loop s
			
			
			mov ax,4c00h
			int 21h

do0end:	    nop
			
code ends
end start