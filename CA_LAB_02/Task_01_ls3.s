.text
.globl main
main:
    li  x22, 1
    li  x23, 2
    li  x20, 10
    li  x21, 5


    bne x22, x23, Else
    add x19, x20, x21
    beq x0 , x0, Exit
Else: sub x19, x20, x21

Exit:

end:

j end
