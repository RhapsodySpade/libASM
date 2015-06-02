section .text
	global _ft_bzero

_ft_bzero:
	push rbx
	mov rbx, rdi

loop:
	cmp rsi, 0
	je return
	mov byte [rbx], 0
	inc rbx
	dec rsi
	jmp loop

return:
	pop rbx
	ret
