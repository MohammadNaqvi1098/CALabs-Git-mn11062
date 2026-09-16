.text
.globl main

main:
    addi x10, x0, 5      # n = 5
    jal x1, fact         # call fact(n)
    addi x11, x10, 0     # result is in x10
    addi x10, x0, 1      # exit
    ecall

fact:
    addi sp, sp, -16
    sw x1, 12(sp)        # save return address
    sw x10, 4(sp)        # save n

    addi x20, x0, 1      # acc = 1

loop:
    ble x10, x0, done    # while (n > 0)
    mul x20, x20, x10    # acc = acc * n
    addi x10, x10, -1    # n = n - 1
    j loop

done:
    add x10, x20, x0     # return acc (copy to x10)
    lw x1, 12(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)

