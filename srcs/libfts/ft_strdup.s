section .text
	global _ft_strdup

extern _malloc
extern _ft_strlen

_ft_strdup:
	push rbx
	mov rbx, rdi
	
	call _ft_strlen
	inc rax
	mov rcx, rax
	
	mov rdi, rax

call_malloc:
	push rcx
	push rdi

	call _malloc

	pop rdi
	pop rcx

	test rax, rax
	jz null

	mov rsi, rbx
	mov rdi, rax

	repnz movsb

	pop rbx
	ret

null:
	pop rbx
	ret
