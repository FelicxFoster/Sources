;错误示例
;data段数据在程序执行完返回后，其占用的内存空间会被释放
;下次再执行时，其内容可能已经被覆盖了
;所以字符串也应该放到安全空间中

assume cs:code 

data segment
	db 'Welcome to Fishc.com!'
data ends

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
			
			;设置中断向量表
			
			mov ax,4c00h
			int 21h
			
do0:		mov ax,data 				;设置ds:si指向字符串
			mov ds,ax
			mov si,0
			
			mov ax,0b800h				;显存段地址
			mov es,ax
			mov di,12*160+36*2			;设置es:si指向显存空间中间位置
			mov cx,21					;设置cx为字符串长度
			
		s:	mov al,[si]			 		;把字符串写到显存空间
			mov es:[di],al
			inc si
			add di,2
			loop s
			
			
			mov ax,4c00h
			int 21h

do0end:	    nop
			
code ends
end start