;�ӳ������֤�Ͳ���
assume cs:code,ds:data

data segment
	db 16 dup(88h)
	db 16 dup(11h)
data ends

code segment
start:		mov ax,data
			mov ds,ax
			
			mov si,0
			mov di,16   ;���8��16λ�������
			
			mov cx,8
			
			call add128
			
			mov ax,4c00h
			int 21h
			
;�ӳ���
;��������128λ���ݵĺ�
;ds:si ָ���һ�������ڴ�ռ�
;ds:di ָ��ڶ��������ڴ�ռ�	
;�͵�ַ���ߵ�ַ���δ��128λ���ݵ��ɵ͵��߸�����
;������浽��һ�������ڴ�ռ���
	
add128:		push ax
			push cx
			push si
			push di
			
			sub ax,ax   ;CF����Ϊ0
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