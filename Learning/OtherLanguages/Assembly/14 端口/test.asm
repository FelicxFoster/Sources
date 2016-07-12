;屏幕中间显示当前月份

assume cs:code 

code segment
start:		
		mov al,8	 ;芯片的8号单元
		out 70h,al   ;向70h端口写入要访问的8单元地址
		in al,71h	 ;从71端口读取8号单元中的数据
		
		mov ah,al    ;把BCD编码转换成十进制
		mov cl,4
		shr ah,cl			;ah为十位数码值，把低4位挤出
		and al,00001111b	;al为个位数码值，把高4位清零
		
		add ah,30h
		add al,30h
		
		mov bx,0b800h
		mov es,bx
		mov word ptr es:[160*12+40*2],ah
		mov word ptr es:[160*12+40*2+2],al
		
		mov 4c00h
		int 21h
		
code ends
end start