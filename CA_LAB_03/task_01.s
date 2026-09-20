.text
.globl main
main:
    li x10, 12              # argument a
    li x11, 12              # argument b
    jal x1, sum

    mv x11, x10             # move returned sum to x11 which is the argument register.
    li x10, 1               # Venus ecall: print integer
    ecall
    j exit

sum:
    add x10, x10, x11       # return a + b in x10
    jalr x0, 0(x1)

exit:
    j exit