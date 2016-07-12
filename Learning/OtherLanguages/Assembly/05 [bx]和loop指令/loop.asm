

assume cs: nimei
nimei segment
start:  	mov ax, 0
		
			mov cx, 123
		s:add ax, 236
			loop s
	
			mov ax, 4c00h
			int 21h
nimei ends
end start