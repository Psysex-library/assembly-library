[BITS 16]
org 0x7C00

mov ah, 0x02
mov al, 1
mov ch, 0
mov cl, 2
mov dh, 0
mov dl, 0x80
int 0x13

jmp $

times 510-($-$$) db 0
dw 0xAA55
