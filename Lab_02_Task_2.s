.text
.globl main
main:

li x19 , 4 # temporary
li  x1 , 1 # x
li  x2 , 2 # x
li  x3 , 3 # x
li  x4 , 4 # x

li x21 , 2 # a
li x22 , 2 # b
li x23 , 2 # c

li x10, 2  # immediate 2


#x21 = a
#x22 = b
#x23 = c

bne x1 , x19 , Else1
    Case1:
       add x21 ,x22,x23
       beq x0 , x0, Exit
Else1:
    bne x2 , x19, Else2
    Case2:
        sub x21 ,x22,x23
        beq x0 , x0, Exit
Else2:
    bne x3 , x19, Else3
    Case3:
        mul x21 ,x22,x10
        beq x0 , x0, Exit
Else3:
    bne x4 , x19, Exit
    Case4:
        div x21 ,x22,x10
        beq x0 , x0, Exit
Exit:
    li x21 , 0 
    

