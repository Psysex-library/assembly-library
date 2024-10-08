[BITS 16]
org 0x7C00

mov al, 0
in al, 0x60
out 0x20, al

jmp $

times 510-($-$$) db 0
dw 0xAA55
