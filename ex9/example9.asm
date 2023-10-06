global _start  ; Declare _start as the entry point of the program

_start:
    push 23      ; Push the value 23 onto the stack
    call times2  ; Call the 'times2' function, passing the argument on the stack
    mov ebx, eax ; Move the result (in EAX) to EBX

    mov eax, 1   ; sys_exit system call number (1 for exit)
    int 0x80     ; Perform a system call to exit the program

times2:
    push ebp     ; Push the value of EBP onto the stack to set up a stack frame
    mov ebp, esp ; Set EBP to the current value of ESP, establishing a base pointer

    mov eax, [ebp+8] ; Load the argument (parameter) from the stack into EAX
    add eax, eax     ; Double the value in EAX (multiply by 2)

    mov esp, ebp ; Restore ESP to its original value
    pop ebp      ; Restore EBP from the stack
    ret          ; Return from the function, EAX contains the result
    
    ; this program calls the times2 function, which takes an argument, 
    ; multiplies it by 2, and returns the result. The result is stored in EBX in _start,
    ; and the program exits with an exit status of 0 using a system call.