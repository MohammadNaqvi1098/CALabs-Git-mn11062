.text
.globl main
main:
li x10, 0  # x10 = i
li x9, 10   #  x9 = j
li x11, 10   #  x11 = a
li x12, 0    # x12 = b
li x13, 0    # x13 = D

li x4, 4
li , x5, 0 # temporary

For1:
    bge x10,  x11, Exit1  # if a >= j, exit loop\

    For2:
        bge x9 ,x12 Exit2  # if b >= j, exit loop

        mul x14, x9, x4
        slli x14, x9 , 2  # j *4
        add x14, x14, x13 # x14 = D + j*4
        add x5, x10, x9 # x5 = i + j
        sw x5, 0(x14)    # a[j] = i + j
    
    Exit2:
    addi x9, x9, 1  # j++       
    beq x0 , x0 , For2  # go back to For2

Exit1:
    addi x10, x10, 1  # i++
    beq x0 , x0 , For1  # go back to For1