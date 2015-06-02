section .text	
	global _ft_strcat

_ft_strcat:
	mov rax, rdi

len_rdi:
	cmp byte[rdi], 0 
	je cat
	inc rdi
	jmp len_rdi

cat:
	mov bl, byte[rsi]	
	mov byte[rdi], bl	
	cmp byte[rsi], 0
	je out
	inc rdi
	inc rsi
	jmp cat

out:
	ret
