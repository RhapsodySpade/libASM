global _ft_isascii

section .text

_ft_isascii:

	xor rax, rax

	cmp rdi, 0
	jl out
	cmp rdi, 127
	jg out
	mov rax, 1

out:
	ret
