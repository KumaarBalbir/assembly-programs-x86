global _start   ; Declare _start as the entry point of the program

section .text
_start:
   mov ecx, 99   ; Move the value 99 into the ECX register (used for comparison)
   mov ebx, 42   ; Set the exit status to 42 (default)

   mov eax, 1    ; Set EAX to 1, which represents the sys_exit system call
   cmp ecx, 100  ; Compare the value in ECX (99) to 100
   jl skip       ; If ECX is less than 100, jump to the 'skip' label

   mov ebx, 13   ; If ECX is greater than or equal to 100, set the exit status to 13
skip:
   int 0x80      ; Generate a software interrupt (syscall) to perform the system call

; At this point, the program will perform a system call based on the value in EAX (1 for sys_exit).
; The exit status in EBX will be either 42 or 13 depending on the value in ECX.
