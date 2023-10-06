global _start  ; Declare _start as the entry point of the program

_start:
    call func   ; Call the 'func' function

    mov eax, 1  ; sys_exit system call number (1 for exit)
    mov ebx, 0  ; Exit status is set to 0
    int 0x80    ; Perform a system call to exit the program

func:
    push ebp    ; Push the value of EBP onto the stack
    mov ebp, esp ; Set EBP to the current value of ESP
    sub esp, 2  ; Allocate 2 bytes on the stack

    mov [esp], byte 'H'  ; Store 'H' at the current stack position
    mov [esp+1], byte 'i' ; Store 'i' one byte above the current stack position

    mov eax, 4   ; sys_write system call number (4 for write)
    mov ebx, 1   ; stdout file descriptor
    mov ecx, esp ; Address of the string to write (on the stack)
    mov edx, 2   ; Number of bytes to write
    int 0x80     ; Perform a system call to write to stdout

    mov esp, ebp ; Restore ESP to its original value
    pop ebp      ; Restore EBP from the stack
    ret          ; Return from the function

; this program calls the func function, which writes the 
; characters 'H' and 'i' to stdout and then returns. After the function call, 
; the program exits with an exit status of 0 using a system call.