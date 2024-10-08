#!/bin/bash
nasm -f bin src/boot.asm -o boot.bin
nasm -f bin src/kernel.asm -o kernel.bin
nasm -f bin src/scheduler.asm -o scheduler.bin
nasm -f bin src/memory.asm -o memory.bin
nasm -f bin src/interrupts.asm -o interrupts.bin
nasm -f bin src/mouse.asm -o mouse.bin
nasm -f bin src/file_system.asm -o file_system.bin
nasm -f bin src/networking.asm -o networking.bin
nasm -f bin src/shell.asm -o shell.bin
cat boot.bin kernel.bin scheduler.bin memory.bin interrupts.bin mouse.bin file_system.bin networking.bin shell.bin > os-image.bin
