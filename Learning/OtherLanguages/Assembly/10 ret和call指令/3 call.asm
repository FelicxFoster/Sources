assume cs:code

code segment
		mov ax,0      ;2 bytes

start:	call s        ;�൱�� push IP , (EB0500) 3 bytes
					  ;Ȼ����ת�� IP=IP+ƫ��(������5)  �ĵط�
		mov ax,4c00h  ;3 bytes
		int 21h		  ;2 bytes
		
	s:	add ax,1   
	
		ret		    ;�൱��pop IP 
					;ȡ��IP����ת��CS:IPָ��
code ends
end start