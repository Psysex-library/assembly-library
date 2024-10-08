[BITS 16]
org 0x7C00

global init_interrupts
global isr_keyboard

init_interrupts:
    lidt [idtr]
    mov al, 0x20
    out 0x20, al
    ret

isr_keyboard:
    in al, 0x60
    out 0x20, 0x20
    iret

idtr:
    dw 0xFFFF
    dd isr_keyboard

times 510-($-$$) db 0
dw 0xAA55
