[BITS 16]
org 0x7C00

mov si, command
call print_string

call read_input

cmp byte [command], 0x01
je clear_screen

cmp byte [command], 0x02
je reboot

jmp $

command db 0
clear_screen:
mov ah, 0x00
mov al, 3
int 0x10
jmp $

reboot:
mov al, 0xFE
out 0x64, al
jmp $

read_input:
mov ah, 0
int 0x16
mov [command], al
ret

print_string:
mov ah, 0x0E
next_char:
lodsb
cmp al, 0
je done
int 0x10
jmp next_char
done:
ret

times 510-($-$$) db 0
dw 0xAA55
