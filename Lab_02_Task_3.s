.text
.globl main
main:


li x10 , 0  # x10 = i
li x11, 10   #  x11 = a 
li x12, 0    # x12 = sum

li x20 , 10 
For:
    bge x10 , x20 , Exit  # if i >= 10, exit loop

    slli x13, x10, 2  # i *4
    add x13, x13, x11 # x13 = a + i*4
    sw x10 , 0(x13)    # a[i] = i

    addi x10, x10, 1  # i++
    beq x0 , x0 , For  # go back to For 

Exit:
    
li x10 , 0  # x10 = i
li x11, 10   #  x11 = a 
li x12, 0    # x12 = sum

li x20 , 10 

For2:
    bge x10 , x20 , Exit2  # if i >= 10, exit loop

    slli x13, x10, 2  # i *4
    add x13, x13, x11 # x13 = a + i*4
    sw x13 , 0(x10)    # a[i] = i

    add x12, x12, x10  # sum += a[i]
    addi x10, x10, 1  # i++
    beq x0 , x0 , For2  # go back to For2

Exit2:
    # Exit label for the second loop        

