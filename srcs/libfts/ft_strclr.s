section .text
  global _ft_strclr
  extern _ft_strlen
  extern _ft_bzero

_ft_strclr:
  cmp rdi, 0
  je out
  push rdi
  call _ft_strlen
  pop rdi
  mov rsi, rax
  call _ft_bzero
  ret


out:
  mov rax, 0
  ret
