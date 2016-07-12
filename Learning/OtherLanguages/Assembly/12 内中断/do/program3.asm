;最终程序
;运行此程序
;当其他程序出现除法溢出时，就会触发该程序

assume cs:code 

code segment
start:		
			mov ax,cs
			mov ds,ax
			mov si,offset do0      				;设置es:di指向目的地址
			
			mov ax,0
			mov es,ax
			mov di,200h             		    ;设置ds:si指向源地址
			
			mov cx,offset do0end - offset do0   ;设置cx为传输长度,利用编译器自动计算
			cld                      			;设置传输方向为正
			rep movsb
			
			mov ax,0			;!设置中断向量表
			mov es,ax
			mov word ptr es:[0*4],200h
			mov word ptr es:[0*4+2],0
			
			mov ax,4c00h
			int 21h
			
do0:		jmp short do0start			;占两个字节
			db 'Welcome to Fishc.com!'	;所以这个字符串的偏移地址为200h+2

d0start:
			mov ax,cs 				
			mov ds,ax
			mov si,202h					;设置ds:si指向字符串
			
			mov ax,0b800h				;显存段地址
			mov es,ax
			mov di,12*160+36*2			;设置es:si指向显存空间中间位置
			mov cx,21					;设置cx为字符串长度
			
		s:	mov al,[si]			 		;把字符串写到显存空间
			mov es:[di],al
			
			inc si
			add di,1
			mov al,02h			;设置颜色
			mov es:[di],al

			add di,1
			loop s
			
			
			mov ax,4c00h
			int 21h

do0end:	    nop
			
code ends
end start