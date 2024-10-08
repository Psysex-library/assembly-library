[BITS 16]
org 0x7C00

global start
extern switch_task

start:
    cli
    mov ax, 0
    mov ds, ax
    mov es, ax
    sti
    jmp main_loop

main_loop:
    call switch_task
    jmp main_loop

times 510-($-$$) db 0
dw 0xAA55
