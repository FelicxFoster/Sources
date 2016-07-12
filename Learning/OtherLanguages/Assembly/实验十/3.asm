
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
			
			mov dh,8  	  ;初始化打印位置
			mov dl,3
			mov cl,0cah

			call show_str ;打印字符串

			mov ax,4c00h
			int 21h
			
;数值显示子程序			
	dtoc:	push dx
			push cx
			push ax
			push si
			push bx
			
			mov bx,0	;用来记录存放了多少位，用栈来临时存放修改后的字符
			
		s1:	mov cx,10d  ;cx作为除数，用于分离各个位
			mov dx,0	;dx为余数，先置零
			
			div cx		;除以10
			mov cx,ax	;商赋值给cx，因为cx能够作为跳转条件
			
			jcxz s2		;商为0时则跳转到s2
			
			add dx,03h  ;商不为零，则余数+30h，得到对应的ASCII码
			push dx		;入栈保存
			
			inc bx		;位数加1
			
			jmp short s1
			
		s2:	add dx,30h  ;当商为0时，取得最后一个余数(补充当“商为零而余数不为零”时的情况)
			push dx		;至此各个位全部入栈
			inc bx		;位数加1
			
			mov cx,bx   ;总共有bx位进栈了，所以需要循环bx次出栈
			mov si,0
			
		s3:	pop ax    ;各个位一次出栈，并写入到指定内存
			
			mov [si],al
			inc si
			
			loop s3
			
	okay:	pop bx
			pop si
			pop ax
			pop cx
			pop dx
			
			ret    ;至此 ,数值显示子程序定义结束
			
			
;字符串显示子程序
show_str:	push cx
			push si
			
			mov al,0a0h    ;a0h = 160
			
			dec dh	    ;行数减1
			mul dh      ;行数 * 每行长度
			
			mov bx,ax   ;偏移地址放到bx
			
			mov al,2     ;每列占两个字节
			mul dl
			sub ax,2     ;因为下标从0开始，又因为偶字节存放颜色，所以减2
			
			add bx,ax    ;加到bx中，得到第一个字符的偏移地址
			
			mov ax,0b800h  ;显存开始段地址
			mov es,ax
			
			mov di,0       ;di指向显存的偏移地址
			
			mov al,cl      ;al获取颜色,因为下cl要用来存放字符
			
			mov ch,0	   ;下边开始存放
			
		s：	mov cl,ds:[si]  ;cl获得字符 
			
			jcxz ok			;当字符为0时,跳转
			
			mov es:[bx+di],cl   ;偶数位 放字符
			mov es:[bx+di+1],al	;奇数位 放颜色
			
			inc si
			
			add di,2     ;指向下个字符
			jmp short s  ;无条件跳转
			
			
		ok:	pop si
			pop cx
			
			ret		;至此，字符串显示子程序定义结束	
			
	
			
code ends
end start