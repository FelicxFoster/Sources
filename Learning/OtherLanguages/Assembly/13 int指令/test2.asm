;��̣���װ�ж�7ch���ж�����
;���ܣ���һ��word�����ݵ�ƽ��
;������(ax) = Ҫ���������
;����ֵ��dx,ax�ֱ��Ž���ĸ�16λ�͵�16λ

assume cs:code

code segment
start:	
		mov ax,cs
		mov ds,ax
		mov si,offset sqr					;����ds:siָ��Դ��ַ
		
		mov ax,0
		mov es,ax
		mov di,200h							;����es:diָ��Ŀ�ĵ�ַ
		
		mov cx,offset sqrend - offset sqr	;����cxΪ���䳤��
		cld									;���ô��䷽��Ϊ��			
		rep movsb							;������ ��ds:si �� es:di
		
		mov ax,0
		mov es,ax							;�޸��ж�������
		mov word ptr es:[7ch*4],200h		;IP
		mov word ptr es:[7ch*4+2],0			;CS
		
		mov ax,4c00h
		int 21h
		
  sqr:	
		mul ax
		iret
sqrend:	nop

code ends
end start 