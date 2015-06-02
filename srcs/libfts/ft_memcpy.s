section .text
	global _ft_memcpy

_ft_memcpy:
	push rdi
	push rsi

	cld
	mov al, sil
	mov rcx, rdx

	rep movsb

	pop rsi
	pop rdi
	mov rax, rdi
	ret
