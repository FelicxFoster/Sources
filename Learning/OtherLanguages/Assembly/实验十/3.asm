
assume cs:code,ds:data

data segment
	db 10 dup(0)
data ends

code segment
start:		mov ax,12666

			mov bx,data
			mov ds,bx
			mov si,0
			
			call dtoc
			
			mov dh,8  	  ;��ʼ����ӡλ��
			mov dl,3
			mov cl,0cah

			call show_str ;��ӡ�ַ���

			mov ax,4c00h
			int 21h
			
;��ֵ��ʾ�ӳ���			
	dtoc:	push dx
			push cx
			push ax
			push si
			push bx
			
			mov bx,0	;������¼����˶���λ����ջ����ʱ����޸ĺ���ַ�
			
		s1:	mov cx,10d  ;cx��Ϊ���������ڷ������λ
			mov dx,0	;dxΪ������������
			
			div cx		;����10
			mov cx,ax	;�̸�ֵ��cx����Ϊcx�ܹ���Ϊ��ת����
			
			jcxz s2		;��Ϊ0ʱ����ת��s2
			
			add dx,03h  ;�̲�Ϊ�㣬������+30h���õ���Ӧ��ASCII��
			push dx		;��ջ����
			
			inc bx		;λ����1
			
			jmp short s1
			
		s2:	add dx,30h  ;����Ϊ0ʱ��ȡ�����һ������(���䵱����Ϊ���������Ϊ�㡱ʱ�����)
			push dx		;���˸���λȫ����ջ
			inc bx		;λ����1
			
			mov cx,bx   ;�ܹ���bxλ��ջ�ˣ�������Ҫѭ��bx�γ�ջ
			mov si,0
			
		s3:	pop ax    ;����λһ�γ�ջ����д�뵽ָ���ڴ�
			
			mov [si],al
			inc si
			
			loop s3
			
	okay:	pop bx
			pop si
			pop ax
			pop cx
			pop dx
			
			ret    ;���� ,��ֵ��ʾ�ӳ��������
			
			
;�ַ�����ʾ�ӳ���
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
			
			ret		;���ˣ��ַ�����ʾ�ӳ��������	
			
	
			
code ends
end start