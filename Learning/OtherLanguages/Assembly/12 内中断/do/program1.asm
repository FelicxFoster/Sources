;����ʾ��
;data�������ڳ���ִ���귵�غ���ռ�õ��ڴ�ռ�ᱻ�ͷ�
;�´���ִ��ʱ�������ݿ����Ѿ���������
;�����ַ���ҲӦ�÷ŵ���ȫ�ռ���

assume cs:code 

data segment
	db 'Welcome to Fishc.com!'
data ends

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
			
			;�����ж�������
			
			mov ax,4c00h
			int 21h
			
do0:		mov ax,data 				;����ds:siָ���ַ���
			mov ds,ax
			mov si,0
			
			mov ax,0b800h				;�Դ�ε�ַ
			mov es,ax
			mov di,12*160+36*2			;����es:siָ���Դ�ռ��м�λ��
			mov cx,21					;����cxΪ�ַ�������
			
		s:	mov al,[si]			 		;���ַ���д���Դ�ռ�
			mov es:[di],al
			inc si
			add di,2
			loop s
			
			
			mov ax,4c00h
			int 21h

do0end:	    nop
			
code ends
end start