;��̣���װ7ch�ж�����
;���ܣ�ʵ��loop��ͬ�Ĺ���
;������cxΪѭ��������bxΪ���λ��

assume cs:code

code segment
start:		
			mov ax,cs
			mov ds,ax
			mov si,offset myloop
			
			mov ax,0
			mov es,ax
			mov di,200h
			
			mov cx,offset lpend - offset lp
			cld 
			movsb
			
			mov ax,0
			mov es,ax
			mov word ptr es:[7ch*4],200h
			mov word ptr es:[7ch*4+2],0
			
			mov ax,4c00h
			int 21h


	lp:		push bp		;�����ӳ�����Ҫ�õ��ļĴ�����Ҫ����ջ����
			mov bp,sp	;��bpָ��ջ
			
			dec cx
					
			jcxz lpret
			add [bp+2],bx ;[bp+2] == [ip]	
				
    lpret:
			pop bp
			iret	;��ʱȡ����ip�Ѿ���Ϊip+bx��(bxΪ����)
			
lpend:	nop			


code ends
end start 