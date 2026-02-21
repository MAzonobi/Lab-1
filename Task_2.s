.section .bss
.global ram
.lcomm ram, 256        # Reserve 256 bytes of RAM

.section .text
.global fill_ram_indirect

fill_ram_indirect:
    # Use indirect addressing to store FFh into RAM locations 50H–58H

    lea ram+0x50, %rsi     
    mov $9, %rcx           

fill_loop:
    movb $0xFF, (%rsi)     
    inc %rsi               
    loop fill_loop         

    ret

.section .note.GNU-stack,"",@progbits