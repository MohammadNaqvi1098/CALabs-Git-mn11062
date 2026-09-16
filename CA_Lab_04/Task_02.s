.text
.globl main

main:
    addi x10, x0, 5      # num = 5
    jal x1, ntri         # call ntri(num)
    addi x11, x10, 0     # result is in x10
    addi x10, x0, 1      # exit
    ecall

ntri:
    addi sp, sp, -16
    sw x1, 12(sp)        # save return address
    sw x10, 8(sp)        # save original num

    li x12, 1
    ble x10, x12, base   # if (num <= 1)

    addi x10, x10, -1    # num = num - 1
    jal x1, ntri         # recursive call ntri(num - 1)

    lw x5, 8(sp)         # restore original num
    add x10, x10, x5     # return recursive_result + original_num
    lw x1, 12(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)

base:
    addi x10, x0, 1      # return 1
    lw x1, 12(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)
