extern _ft_isalpha

section .text
	global _ft_tolower

_ft_tolower:

	call _ft_isalpha
	cmp rax, 1
	je tolower

	mov rax, rdi;

out:
	ret

tolower:
	mov rax, rdi
	or rax, 0x20
	jmp out
