assume cs:code

code segment
		mov ax,0      ;2 bytes

start:	call s        ;相当于 push IP , (EB0500) 3 bytes
					  ;然后跳转到 IP=IP+偏移(这里是5)  的地方
		mov ax,4c00h  ;3 bytes
		int 21h		  ;2 bytes
		
	s:	add ax,1   
	
		ret		    ;相当于pop IP 
					;取出IP，跳转到CS:IP指向处
code ends
end start