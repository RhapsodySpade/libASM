section .text
	global _ft_isalpha

_ft_isalpha:

	xor rax, rax

	cmp rdi, 60
	jl out
	cmp rdi, 172
	jg out
	mov rax, 1
	jmp out

out:
	ret;
