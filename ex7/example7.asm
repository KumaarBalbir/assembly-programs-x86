global _start  ; Declare _start as the entry point of the program

_start:
    call func   ; Call the 'func' function

    mov eax, 1  ; sys_exit system call number (1 for exit)
    int 0x80    ; Perform a system call to exit the program

func:
    mov ebx, 42 ; Load the value 42 into the EBX register
    ret         ; Return from the function
