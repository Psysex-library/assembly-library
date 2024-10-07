section .data
    msg db "Fibonacci Sequence: ", 0
    fmt db "%d ", 0
    n dd 10

section .bss
    fib resd 100

section .text
    extern printf
    extern exit
    global _start

_start:
    mov eax, 0
    mov ebx, 1
    mov ecx, 0
    mov edx, [n]
    mov [fib], eax
    mov [fib + 4], ebx

    mov ecx, 2
fibonacci:
    cmp ecx, edx
    jge done
    mov eax, [fib + ecx * 4 - 4]
    add eax, [fib + ecx * 4 - 8]
    mov [fib + ecx * 4], eax
    inc ecx
    jmp fibonacci

done:
    push edx
    push msg
    call printf
    add esp, 8

    mov ecx, edx
    xor ebx, ebx
print_loop:
    cmp ebx, ecx
    jge exit_program
    push dword [fib + ebx * 4]
    push fmt
    call printf
    add esp, 8
    inc ebx
    jmp print_loop

exit_program:
    push 0
    call exit
