extern _ft_isalpha


section .text
	global _ft_toupper

_ft_toupper:

	call _ft_isalpha

	cmp rax, 1
	je toupper

	mov rax, rdi

out:
	ret

toupper:
	mov rax, rdi
	and rax, 0xdf
	jmp out
