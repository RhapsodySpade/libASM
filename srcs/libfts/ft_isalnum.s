extern _ft_isdigit
extern _ft_isalpha

section .text
	global _ft_isalnum

_ft_isalnum:

	xor rax, rax

	call _ft_isdigit
	cmp rax, 1
	je out

	call _ft_isalpha
	cmp rax, 1
	je out

	mov rax, 0

out : 
	ret
