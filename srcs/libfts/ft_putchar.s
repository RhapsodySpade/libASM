section .text
  global _ft_putchar


_ft_putchar:
  cmp rdi, 0
  je null
  push rdi
  mov rsi, rsp          ;rsp -> stack pointer
  mov rdx, 1
  mov rax, 0x2000004
  mov rdi, 1
  syscall
  pop rdi
  ret

null:
  ret
