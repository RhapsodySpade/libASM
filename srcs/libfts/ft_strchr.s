section .text
  global _ft_strchr
  extern _ft_strlen

_ft_strchr:
  cmp rdi, 0
  je error

  push rdi
  call _ft_strlen
  pop rdi

  mov rcx, rax
  inc rcx
  mov rax, rsi
  repne scasb

  cmp rcx, 0
  je error

  dec rdi
  mov rax, rdi
  ret

error:
  xor rax, rax
  ret
