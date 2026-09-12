.text
.globl main.
main:

li x10 ,4
li x11 ,3
li x12 ,2
li x13 ,1



addi sp, sp , -12

sw x18 , 0 (sp)
sw x19 , 4 (sp)
sw x20 , 8 (sp)

add x18, x10, x11
add x19 , x12, x13
sub x20, x18, x19
mv x11,x20
li x10,1
ecall
j exit
exit:




