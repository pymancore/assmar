;nasm -f elf64 -g -F stabs Helsyscall.asm
;ld -o Helsyscall Helsyscall.o
;./Helsyscal
SECTION .data
HelMsg: db "Hello World!",10
HelLen: equ $-HelMsg
SECTION .bss
SECTION .text
global _start
_start:
nop
mov eax,4
mov ebx,1
mov ecx,HelMsg
mov edx,HelLen
int 80H

mov eax,1
mov ebx,0
int 80H