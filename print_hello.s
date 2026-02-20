.section .data
    message: .ascii "Hello, World!\n"
    message_len = . - message

    .section .text
    .globl _start
    _start:
    mov $1, %rax            # write
    mov $1, %rdi            # stdout
    lea message(%rip), %rsi # buf
    mov $message_len, %rdx  # message_len
    syscall

    
    mov $60, %rax           # exit
    mov $0,  %rdi           # status
    syscall