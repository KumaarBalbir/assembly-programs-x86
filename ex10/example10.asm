global main  ; Declare 'main' as the entry point of the program

extern printf  ; Declare the 'printf' function, which is defined externally

section .data
    msg db "Testing %i...", 0x0a, 0x00  ; Define a null-terminated string in the data section

main:
    push ebp     ; Push the current value of EBP onto the stack to set up a stack frame
    mov ebp, esp ; Set EBP to the current value of ESP, establishing a base pointer

    push 123     ; Push the integer value 123 onto the stack as an argument
    push msg     ; Push the memory address of the 'msg' string onto the stack
    call printf  ; Call the 'printf' function with the arguments on the stack

    mov eax, 0   ; Set EAX to 0 (return value)
    mov esp, ebp ; Restore ESP to its original value
    pop ebp      ; Restore EBP from the stack
    ret          ; Return from the 'main' function

    ; this program's main function calls the printf function to print the formatted string
    ; "Testing %i..." with the integer value 123, and then exits with a return value of 0.