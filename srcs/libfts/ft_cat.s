section .data
	buffer times 2048 db 0
	lenbuff equ $ - buffer

section .text
	global _ft_cat

_ft_cat:
	cmp rdi, -1
	jle out

loop:
	mov rax, 0x2000003 ;read() 
	lea rsi, [rel buffer]
	mov rdx, lenbuff
	syscall
	
	cmp rax, 0
	jle out
	
	push rdi
	
	mov rdx, rax
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel buffer]
	syscall
	
	pop rdi
	cmp rax, -1
	je out
	cmp rdi, 0
	je loop

out:
	pop rdi
	mov rax, 0
	ret
