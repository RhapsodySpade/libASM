section .text
	global _ft_memset

_ft_memset:
	push rdi
	push rsi

	cld
	mov al, sil
	mov rcx, rdx

	rep stosb

	pop rsi
	pop rdi
	mov rax, rdi
	ret
