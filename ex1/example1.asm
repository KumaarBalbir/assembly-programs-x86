global _start     ; This declares _start as a global label, which is the entry point of the program
_start:

mov eax, 1        ; Move the value 1 into the EAX register
                  ; EAX is often used to specify the system call number in x86 assembly

mov ebx, 42       ; Move the value 42 into the EBX register
                  ; EBX is often used to pass arguments to system calls

sub ebx, 20       ; Subtract 22 from EBX register 

int 0x80          ; Generate a software interrupt (syscall) with interrupt number 0x80
                  ; This is used for making system calls in Linux

; At this point, the system call specified in EAX (1 for "write") will be executed,
; and the file descriptor (stdout), the buffer (containing "42"),
; and the length (which is now 22) are determined by EBX and other registers
