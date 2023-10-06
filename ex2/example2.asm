global _start                     ;This declares the label _start as a global label, 
                                  ;which serves as the entry point of the program.

section .data                     ;defines the data segment where you can declare and initialize variables.
    msg db "Hello, world!", 0x0a  ; Define the null-terminated ASCII string "Hello, world!" with a newline character (0x0a).The db directive is used to define a byte.
    len equ $ - msg               ; Calculate the length of the msg string by subtracting the address of msg from the current location counter $ and assign it to 'len'

section .text                     ;This section defines the code segment where the program's instructions reside.
_start:                           ;the entry point of the program. Execution begins here.
    mov eax, 4                    ; Set EAX to 4, which represents the 'write' system call
    mov ebx, 1                    ; Set EBX to 1, which is the file descriptor for stdout
    mov ecx, msg                  ; Set ECX to the memory address of the 'msg' string
    mov edx, len                  ; Set EDX to the length of the 'msg' string
    int 0x80                      ; Generate a software interrupt (syscall) to perform the 'write' system call

    mov eax, 1                    ; Set EAX to 1, which represents the 'exit' system call
    mov ebx, 0                    ; Set EBX to 0, indicating a successful program termination
    int 0x80                      ; Generate a software interrupt (syscall) to perform the 'exit' system call
