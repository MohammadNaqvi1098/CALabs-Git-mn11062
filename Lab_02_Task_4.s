.text
.globl main
main:
 li x7, 0  # x7 = i
li x29, 0   #  x29 = j
li x5, 2  #  x5 = a
li x6, 5    # x6 = b
li x10, 0x100    # x10 = D
li x4, 4 #temporary
li x8, 0 # temporary
For1:
    bge x7,  x5, Exit  # if a >= j, exit loop\

    For2:
        bge x29 ,x6 ,Exit1      # if b >= j, exit loop

        slli x14, x29 , 4  # j *16
        add x14, x14, x10 # x14 = D + j*16
        add x9, x7, x29 # x9 = i + j
        sw x9, 0(x14)    # a[j] = i + j
    
    addi x29, x29, 1  # j++       
    beq x0 , x0 , For2  # go back to For2
Exit1:
    addi x7, x7, 1  # i++
    li x29, 0   #  j=0
    beq x0 , x0 , For1  # go back to For1
Exit:
end:
j end

