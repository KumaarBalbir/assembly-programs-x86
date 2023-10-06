global _start   ; Declare _start as the entry point of the program

_start:
    sub esp, 4    ; Allocate 4 bytes on the stack by subtracting from esp (stack pointer)
    mov [esp], byte 'H'  ; Place 'H' in the first byte of the allocated stack space
    mov [esp+1], byte 'e'  ; Place 'e' in the second byte
    mov [esp+2], byte 'y'  ; Place 'y' in the third byte
    mov [esp+3], byte '!'  ; Place '!' in the fourth byte
    mov eax, 4    ; Set up the sys_write system call number in eax
    mov ebx, 1    ; Set up the file descriptor for stdout (1) in ebx
    mov ecx, esp  ; Set up ecx with the address of the allocated stack space
    mov edx, 4    ; Set up the number of bytes to write (4 bytes)
    int 0x80      ; Trigger a software interrupt (syscall) to perform sys_write

    mov eax, 1    ; Set up the sys_exit system call number in eax
    mov ebx, 0    ; Set up the exit status (0) in ebx
    int 0x80      ; Trigger a software interrupt (syscall) to perform sys_exit
