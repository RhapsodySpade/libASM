section .text
	global _ft_isprint

_ft_isprint:

	xor rax, rax

	cmp rdi, ' '
	jl out
	cmp rdi, '~'
	jg out
	mov rax, 1
	jmp out

out:
	ret;
