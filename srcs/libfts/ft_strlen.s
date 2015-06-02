section .text
	global _ft_strlen

_ft_strlen:
	cmp rdi, 0
	je null

;preserv pointer to first char
	push rdi
	push rcx

	cld

; not of 0 = max int, so rcx = max int (flip all bits)
	mov rcx, 0
	not rcx

	mov al, 0

; repeat while [rdi + rcx] != al
	repne scasb

;reflip bits to get strlen length + 1 (\0 counted)
	not rcx

;load strlen - 1 into rax
	lea rax, [rcx - 1]

; "free" iterator
	pop rcx

;restor pointer to first char
	pop rdi

	jmp out


null:
	mov rax, -1
	jmp out

out:
	ret
