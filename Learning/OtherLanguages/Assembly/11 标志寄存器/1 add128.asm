;子程序的验证和测试
assume cs:code,ds:data

data segment
	db 16 dup(88h)
	db 16 dup(11h)
data ends

code segment
start:		mov ax,data
			mov ds,ax
			
			mov si,0
			mov di,16   ;拆成8个16位依次相加
			
			mov cx,8
			
			call add128
			
			mov ax,4c00h
			int 21h
			
;子程序
;计算两个128位数据的和
;ds:si 指向第一个数的内存空间
;ds:di 指向第二个数的内存空间	
;低地址到高地址依次存放128位数据的由低到高各个字
;结果保存到第一个数的内存空间中
	
add128:		push ax
			push cx
			push si
			push di
			
			sub ax,ax   ;CF设置为0
		s:	mov ax,[si]
			adc ax,[di]
			mov [si],ax
			inc si
			inc si
			inc di
			inc di
			loop segment
			
			pop di
			pop si
			pop cx
			pop ax
			
			ret


code ends
end start