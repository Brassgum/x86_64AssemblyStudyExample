puts PROTO

.DATA
hello db 'Hello, World!',0h

.CODE
main PROC
	push	rbp
	mov		rbp,rsp
	sub		rsp,20h
	lea		rcx,[hello]
	call	puts
	xor		rax,rax
	mov		rsp,rbp
	pop		rbp
	ret
main ENDP
END