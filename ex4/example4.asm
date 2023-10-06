; calculating 2^6 using loop (jump instruction)
global _start        ; Declare _start as the entry point of the program

section .text
_start:
    mov ebx, 1       ; Initialize ebx with the value 1 (ebx = 1)
    mov ecx, 6       ; Initialize ecx with the number of iterations (ecx = 6)

label:               ; Define a label called 'label'
    add ebx, ebx     ; Add the value in ebx to itself (ebx *= 2)
    dec ecx          ; Decrement the value in ecx by 1 (ecx -= 1)
    cmp ecx, 0       ; Compare the value in ecx with 0
    jg label         ; Jump to the 'label' if ecx is greater than 0 (loop)

    mov eax, 1       ; Set eax to 1 (sys_exit system call)
    int 0x80          ; Trigger a software interrupt (syscall)
