
assume cs:code

data segment
	db 'Welcome to masm!',0
data ends

code segment 
start:		mov ax,data
			mov ds,ax
			mov dh,8        ;��  
			mov dl,3		;��  80*2*7 + 3*2 = 466H
			mov cl,2		;��ɫ
			mov si,0		;�ַ����׵�ַ
			
			call show_str
			
			mov ax,4c00h
			int 21h
			
	
  show_str:	push cx
			push si
			
			mov al,0a0h    ;a0h = 160
			
			dec dh	    ;������1
			mul dh      ;���� * ÿ�г���
			
			mov bx,ax   ;ƫ�Ƶ�ַ�ŵ�bx
			
			mov al,2     ;ÿ��ռ�����ֽ�
			mul dl
			sub ax,2     ;��Ϊ�±��0��ʼ������Ϊż�ֽڴ����ɫ�����Լ�2
			
			add bx,ax    ;�ӵ�bx�У��õ���һ���ַ���ƫ�Ƶ�ַ
			
			mov ax,0b800h  ;�Դ濪ʼ�ε�ַ
			mov es,ax
			
			mov di,0       ;diָ���Դ��ƫ�Ƶ�ַ
			
			mov al,cl      ;al��ȡ��ɫ,��Ϊ��clҪ��������ַ�
			
			mov ch,0	   ;�±߿�ʼ���
			
		s��	mov cl,ds:[si]  ;cl����ַ� 
			
			jcxz ok			;���ַ�Ϊ0ʱ,��ת
			
			mov es:[bx+di],cl   ;ż��λ ���ַ�
			mov es:[bx+di+1],al	;����λ ����ɫ
			
			inc si
			
			add di,2     ;ָ���¸��ַ�
			jmp short s  ;��������ת
			
			
		ok:	pop si
			pop cx
			
			ret		;�ӳ������
		

code ends
end start