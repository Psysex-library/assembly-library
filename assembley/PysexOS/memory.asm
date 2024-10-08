[BITS 16]
org 0x7C00

global allocate_memory
global free_memory

allocate_memory:
    mov ax, 0x2000
    ret

free_memory:
    ret

times 510-($-$$) db 0
dw 0xAA55
