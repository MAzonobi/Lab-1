.section .bss
.global ram
.lcomm ram, 256        # Reserve 256 bytes of RAM

.section .text
.global sum_to_10

sum_to_10:
    # Sum numbers up to 10 and store result at RAM[50H]

    lea ram+0x50, %rsi     
    mov $10, %rcx          
    mov $0, %al            

sum_loop:
    add %cl, %al           
    loop sum_loop          

    movb %al, (%rsi)       

    ret

.section .note.GNU-stack,"",@progbits