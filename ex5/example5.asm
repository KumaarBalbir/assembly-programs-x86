global _start   ; Declare _start as the entry point of the program

section .data
    addr db "yellow"  ; Define a data section with a string 'yellow'

section .text
_start:
    mov [addr], byte 'H'  ; Replace the first character 'y' with 'H'
    mov [addr+5], byte '!'  ; Replace the last character 'w' with '!'
    mov eax, 4    ; Set up the sys_write system call number in eax
    mov ebx, 1    ; Set up the file descriptor for stdout (1) in ebx
    mov ecx, addr ; Set up the address of the string in ecx
    mov edx, 6    ; Set up the number of bytes to write (6 characters)
    int 0x80      ; Trigger a software interrupt (syscall) to perform sys_write

    mov eax, 1    ; Set up the sys_exit system call number in eax
    mov ebx, 0    ; Set up the exit status (0) in ebx
    int 0x80      ; Trigger a software interrupt (syscall) to perform sys_exit
