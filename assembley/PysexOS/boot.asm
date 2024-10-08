[BITS 16]          
org 0x7c00         

start:
    mov ah, 0x0E   
    mov al, 'L'    
    int 0x10       
    mov al, 'o'
    int 0x10
    mov al, 'a'
    int 0x10
    mov al, 'd'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, 'n'
    int 0x10
    mov al, 'g'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'K'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'n'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, '!'
    int 0x10

    mov bx, 0x1000             
    mov dh, 1                  
    mov dl, 0x80               
    mov ah, 0x02               
    mov al, 1                  
    mov ch, 0                  
    mov cl, 2                  
    int 0x13                   

    jmp 0x1000                 

hang:
    jmp hang                   

times 510-($-$$) db 0  
dw 0xAA55              