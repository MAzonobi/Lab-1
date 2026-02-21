.section .bss
.global ram
.lcomm ram, 256        # Reserve 256 bytes of RAM

.section .text
.global clear_ram

clear_ram:
    # Clear RAM locations 50H–58H by storing 00h using indirect addressing

    lea ram+0x50, %rsi     # RSI = address of ram[0x50]
    mov $9, %rcx           # 9 bytes to clear (50H–58H)

clear_loop:
    movb $0x00, (%rsi)     
    inc %rsi               
    loop clear_loop        

    ret

.section .note.GNU-stack,"",@progbits