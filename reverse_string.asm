section .data
    prompt db "Geben Sie einen Text ein: ", 0
    fmt_input db "%s", 0
    fmt_output db "Umgekehrter Text: %s", 10, 0
    error_msg db "Fehler: Eingabe zu lang!", 10, 0

section .bss
    input resb 256
    reversed resb 256

section .text
    extern printf
    extern scanf
    extern strlen
    extern strcpy
    extern exit
    global _start

_start:
    push prompt
    call printf
    add esp, 4

    push input
    push fmt_input
    call scanf
    add esp, 8

    mov eax, input
    call strlen
    cmp eax, 256
    jge error

    mov ecx, eax
    mov ebx, 0
reverse_loop:
    dec ecx
    mov al, [input + ecx]
    mov [reversed + ebx], al
    inc ebx
    test ecx, ecx
    jnz reverse_loop

    mov byte [reversed + ebx], 0

    push reversed
    push fmt_output
    call printf
    add esp, 8

    jmp exit_program

error:
    push error_msg
    call printf
    add esp, 4

exit_program:
    push 0
    call exit
