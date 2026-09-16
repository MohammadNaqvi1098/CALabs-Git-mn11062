.text
.globl main
main:
li  x24, 2  # storing 2 for k =2
li  x25, 0x100   #base address for array
li  x22, 0   # index i for array
li  x5, 2    # for inserting 2 in array
li  x4 , 4    # for inserting 4 in array
sw x5 ,0(x25)     
sw x5 ,4(x25)
sw x4 ,8(x25)
sw x5 ,12(x25)

Loop : slli x10,x22,2
    add x10,x10,x25
    lw x9, 0(x10)
    bne x9 ,x24, Exit
    addi x22,x22,1
    beq x0, x0  , Loop

Exit:

end:
j end