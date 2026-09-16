.text
.globl main
main:
li x22 , 0  # x22 = i
li x11, 0x200   #  x11 = a 
li x23, 0    # x23 = sum
li x10 , 10 
For:
    bge x22 , x10 , Exit  # if i >= 10, exit loop
    slli x13, x22, 2  # i *4
    add x13, x13, x11 # x13 = a + i*4
    sw x22 , 0(x13)    # a[i] = i
    addi x22, x22, 1  # i++
    j For  # go back to For 

Exit:
li x22 , 0  # x22 = i
li x11, 0x200   #  x11 = a 
li x23, 0    # x23 = sum
li x10 , 10 
For2:
    bge x22 , x10 , Exit2  # if i >= 10, exit loop
    slli x13, x22, 2  # i *4
    add x13, x13, x11 # x13 = a + i*4
    lw x20 , 0(x13)    # x20 = a[i]
    add x23, x23, x20  # sum += a[i]
    addi x22, x22 , 1  # i++
    j  For2  # go back to For2
Exit2:
    # Exit label for the second loop        
end:
    j end

