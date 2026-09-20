.text
.globl main

main:
    li x20, 0x200

    li x21, 10
    sb x21, 0(x20)

    li x21, 20
    sb x21, 4(x20)

    li x21, 30
    sb x21, 8(x20)

    li x21, 40
    sb x21, 12(x20)

    li x21, 50
    sb x21, 16(x20)



    li x10, 0x200          # base address of v[]
    li x11, 3              # k
    jal x1, swap
    j exit

swap:
    slli x5, x11, 2        
    add x5, x10, x5        # address of v[k]
    lw x6, 0(x5)           # temp = v[k]
    lw x7, 4(x5)           # value of v[k+1]
    sw x7, 0(x5)           # v[k] = v[k+1]
    sw x6, 4(x5)           # v[k+1] = temp
    jalr x0, 0(x1)

exit:
    j exit