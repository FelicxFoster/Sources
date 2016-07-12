;FishC
assume cs:code,ds:data,es:table

data segment
	db '1975','1976','1977','1978','1979','1980','1981','1982'
	db '1983','1984','1985','1986','1987','1988','1989','1990'
	db '1991','1992','1993','1994','1995'
	;以上表示21年的21个字符串  
	;地址：0-83    0-53H
	
	dd 16,22,382,1356,2390,8000,16000,24486,50065,97947,140417,197514
	dd 345980,590872,803530,1183000,1843000,2759000,3753000,4649000,5937000
	;以上时硎?1年公司总收入的21个dword型数据
	;地址：84-167  54H-0A7H
	
	dw 3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4307,5635,8226
	dw 11542,14430,15257,17800
	;以上表示21年公司雇员人数的21个word型数据	
	;地址：168-210   0A8H-D2
data ends

table segment
	db 21 dup('year summ ne ?? ') ;每行16个字节
table ends

code segment
start:	mov ax,data   ;ds指向数据段
		mov ds,ax
		
		mov ax,table  ;es指向table段
		mov es,ax
		
					  ;初始化
		mov bx,0	  ;控制table 的行
		mov si,0	  ;控制data 年份和总收入 的列
		mov di,0 	  ;控制data 人数 的列
		
		mov cx,21
	s:  mov al,0[si]		;依次保存4位的年份
		mov es:[bx].0,al
		mov al,0[si+1]
		mov es:[bx].1,al
		mov al,0[si+2]
		mov es:[bx].2,al
		mov al,0[si+3]
		mov es:[bx].3,al
		
		mov ax,84[si]    ;依次保存总收入  低16位 4 bytes
		mov dx,84[si+2]  ;高16位
		mov es:[bx].5,ax
		mov es:[bx].7,dx
		
		
		mov ax,168[di]	   ;保存人数  2 bytes				
		mov es:[bx].10,ax  
		
		mov ax,84[si]	  ;ax已经改变 需要恢复，dx每变 不用
		div word ptr es:[bx].10    ;保存人均收入
		mov es:[bx].13,ax	 
		
		add bx,16 
		add si,4
		add di,2

		loop s
		
		
		mov ax,4c00h
		int 21h
code ends
end start