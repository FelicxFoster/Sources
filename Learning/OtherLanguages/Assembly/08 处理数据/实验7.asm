;myself
assume cs:code,ds:data,es:table,ss:stack

stack segment
	dw 0    ;�����洢cx
stack ends

data segment
	db '1975','1976','1977','1978','1979','1980','1981','1982'
	db '1983','1984','1985','1986','1987','1988','1989','1990'
	db '1991','1992','1993','1994','1995'
	;���ϱ�ʾ21���21���ַ���  
	;��ַ��0-83    0-53H
	
	dd 16,22,382,1356,2390,8000,16000,24486,50065,97947,140417,197514
	dd 345980,590872,803530,1183000,1843000,2759000,3753000,4649000,5937000
	;����ʱ��?1�깫˾�������21��dword������
	;��ַ��84-167  54H-0A7H
	
	dw 3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4307,5635,8226
	dw 11542,14430,15257,17800
	;���ϱ�ʾ21�깫˾��Ա������21��word������	
	;��ַ��168-210   0A8H-D2
data ends

table segment
	db 21 dup('year summ ne ?? ') ;ÿ��16���ֽ�
table ends

code segment
start:	mov ax,data   ;dsָ�����ݶ�
		mov ds,ax
		mov bx,0
		mov si,0
		
		mov ax,table  ;esָ��table��
		mov es,ax
		mov bp,0
		mov di,0
		
		mov ax,stack  ;ջ��
		mov ss,ax
		mov sp,2
		
		mov cx,21
	s:	push cx     		  ;�ڲ�ѭ�� ����cx
		t:  mov cx,4
			mov al,[bx].0[si]     ;��� 4 bytes
			mov es:[bp].0[di],al
			loop t
		
		inc di
		
		mov ax,[bx].84[si]    ;������  4 bytes
		mov dx,[bx].84[si+2]
		mov es:[bp].5.[di],ax
		mov es:[bp].5.[di+2],dx
		
		inc di
		
		mov cx,[bx].168[si]	   ;����  2 bytes  ���ͳһbx�					
		mov es:[bp].10[di],cx  ;����2 ���ǵ���ѭ��???
		
		inc di
		
		div cx   			  ;�˾�����
		mov es:[bp].13[di],ax	 
		
		add bx,4   ;???
		add bp,16
		
		pop cx
		loop s
		
		
		mov ax,4c00h
		int 21h
code ends
end start