extern _ft_strlen

section .text
	global _ft_puts

_ft_puts:

  push rdi
  push rsi 

  mov rcx, rdi

  call _ft_strlen

  mov rdx, rax
  mov rax, 0x2000004 ;syscall for write
  mov rdi, 1		;arg0
  mov rsi, rcx		;arg1
  syscall

  jc error ;error if carry

  mov rax, 0x2000004
  mov rdi, 1
  lea rsi, [rel newline]
  mov rdx, 1
  syscall ;write /n

  jc error

  pop rsi
  pop rdi

  mov rax, 1

  ret

error:

	pop rsi
	pop rdi

  	mov rax, -1
 	 ret

section .data

newline: db 0xa
