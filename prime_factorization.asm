section .data
    prompt db "Geben Sie eine Zahl ein: ", 0
    fmt_input db "%d", 0
    fmt_output db "Die Primfaktoren sind: ", 0
    error_msg db "Bitte eine positive Zahl eingeben!", 0

section .bss
    n resd 1
    factor resd 100
    count resd 1

section .text
    extern printf
    extern scanf
    extern exit
    global _start

_start:
    push prompt
    call printf
    add esp, 4

    push n
    push fmt_input
    call scanf
    add esp, 8

    mov eax, [n]
    cmp eax, 1
    jle error

    mov ecx, 2
    mov ebx, 0
    mov [count], ebx

factorization:
    cmp eax, 1
    je print_factors
    mov edx, 0
    div ecx
    cmp edx, 0
    je store_factor
    inc ecx
    jmp factorization

store_factor:
    mov [factor + ebx * 4], ecx
    inc ebx
    mov eax, eax
    jmp factorization

print_factors:
    push fmt_output
    call printf
    add esp, 4

    mov ecx, ebx
    xor ebx, ebx
print_loop:
    cmp ebx, ecx
    jge exit_program
    push dword [factor + ebx * 4]
    push fmt_output
    call printf
    add esp, 8
    inc ebx
    jmp print_loop

error:
    push error_msg
    call printf
    add esp, 4
    jmp exit_program

exit_program:
    push 0
    call exit
