[BITS 16]
org 0x7C00

global init_network
global send_packet

init_network:
    ret

send_packet:
    ret

times 510-($-$$) db 0
dw 0xAA55
