global add42     ; Declare the add42 function as global

add42:
    push ebp      ; Save the base pointer onto the stack
    mov ebp, esp  ; Set the base pointer to the current stack pointer

    ; Function body:
    mov eax, [ebp+8]  ; Load the first function argument into EAX (argument at [ebp+8])
    add eax, 42       ; Add 42 to the value in EAX

    mov esp, ebp  ; Restore the stack pointer to its original value
    pop ebp       ; Restore the base pointer to its original value

    ret           ; Return from the function with the result in EAX
    
    ; The add42 function takes one argument, adds 42 to it, and returns the result