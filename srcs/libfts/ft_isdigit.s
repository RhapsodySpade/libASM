section .text
	global _ft_isdigit

_ft_isdigit:

	xor rax, rax

	cmp rdi, '0'
	jl out
	cmp rdi, '9'
	jg out
	mov rax, 1
	jmp out

out:
	ret
