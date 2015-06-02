section .text
	global _ft_strchr

_ft_strchr:
	push rbx
	mov rbx, rsi

loop:
	cmp byte[rdi], 0
	je error
	cmp byte[rdi], bl
	je found
	inc rdi
	jmp loop

error:
	mov rax, 0
	pop rbx
	ret

found:
	mov rax, rdi
	pop rbx
	ret
