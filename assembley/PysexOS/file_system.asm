[BITS 16]
org 0x7C00

global open_file
global read_file
global write_file
global close_file

open_file:
    ret

read_file:
    ret

write_file:
    ret

close_file:
    ret

times 510-($-$$) db 0
dw 0xAA55
