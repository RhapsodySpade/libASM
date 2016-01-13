section .data
    buffer times 2048 db 0
    bufflen equ $ - buffer

section .text
    global _ft_cat

_ft_cat:

while:

    mov rax, 0x2000003
    mov rsi, buffer
    mov rdx, bufflen
    syscall
    jc err

    push rdi

    cmp rax, 0
    je out

    mov rdx, rax
    mov rax, 0x2000004
    mov rdi, 1
    mov rsi, buffer
    syscall

    pop rdi

    jc err

    jmp while

out:
    pop rdi
    mov rax, 0
    ret

err:
    mov rax, 1
    ret
