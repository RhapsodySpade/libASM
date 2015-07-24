section .text
	global _ft_isalpha

_ft_isalpha:

	xor rax, rax

	cmp rdi, 65
	jl out
  cmp rdi, 90
  jg min
  jmp next

min:
  cmp rdi, 97
  jl out
  jmp next

next:
  cmp rdi, 122
	jg out
	mov rax, 1
	jmp out


out:
	ret;
