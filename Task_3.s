.text
.globl main
main:


    li x20, 5  # a= 5
    li x21, 0  #  b = 0
    li x22, 5   #  y = 5
    li x23, 32   # z = 32

    add x20, x21, x23 # a = b +32 , x20 = a
    add x24, x20 ,x21 # d1 = (a + b) , x24 = d1
    sub x25, x24, x22 # d = d1 - y, x25 = d

    sub x26 , x20 ,x25 # e1 = a - d, x26 =e1
    sub x27 , x21 ,x20 # e2 = b - a, x27 = e2

    add x28, x26, x27 # e3 = e1 + e2, x28 = e3

    add x29, x28, x25 # e = e3 + d x29 = e

    add x30, x20, x21 # f = a + b, x30 = f
    
    add x31, x25, x29 # g = e + f, x31 = g

    add x01, x31, x30 # h = g + f, x32 = h

end:
    j end