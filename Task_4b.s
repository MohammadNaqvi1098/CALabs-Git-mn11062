.text
.globl main

main:
    li x5 , 5
    li x4 , 10  
    li x20, 0x100        # a
    li x21, 0x200        # b
    li x22, 0x300        # c

    sb x5, 0(x20) # store a[0] = 5
    sh x4, 0(x21) # store b[0] = 10
    sb x5, 1(x20) # store a[1] = 5
    sh x4, 2(x21) # store b[1] = 10
    sb x5, 2(x20) # store a[2] = 5
    sh x4, 4(x21) # store b[2] = 10
    sb x5, 3(x20) # store a[3] = 5
    sh x4, 6(x21) # store b[3] = 10

    # c[0] = a[0] + b[0]
    lb x10 , 0(x20) 
    lh x11, 0(x21) 
    add x12, x10, x11 # a[i] + b[i]
    sw x12, 0(x22) 

    # c[1] = a[1] + b[1]
    lb x10, 1(x20)
    lh x11, 2(x21)
    add x12, x10, x11 
    sw x12, 4(x22) 

    # c[2] = a[2] + b[2]
    lb x10, 2(x20)
    lh x11, 4(x21)
    add x12, x10, x11 
    sw x12, 8(x22) 

    # c[3] = a[3] + b[3]
    lb x10, 3(x20)
    lh x11, 6(x21)
    add x12, x10, x11
    sw x12, 12(x22)

end:
    j end


