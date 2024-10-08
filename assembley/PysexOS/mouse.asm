[BITS 16]
org 0x7C00

global init_mouse
global mouse_handler

init_mouse:
    out 0x64, 0xA8
    out 0x64, 0x20
    mov al, 0x00
    out 0x60, al
    ret

mouse_handler:
    in al, 0x60
    out 0x20, 0x20
    iret

times 510-($-$$) db 0
dw 0xAA55
