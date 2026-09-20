.text
.globl main
main:

    li x20, 0x200          # x20 = address of y['n', 'a', 'q', 'v', 'i']

    li x21, 110          # n = 110   
    sb x21, 0(x20)

    li x21, 97             # a = 97
    sb x21, 1(x20)

    li x21, 113             # q = 113
    sb x21, 2(x20)

    li x21, 118            # v = 118
    sb x21, 3(x20)

    li x21, 105           # i = 105
    sb x21, 4(x20)
    
    li x21, 0              # '\0' = 0
    sb x21, 5(x20)

li x10, 0x100  # x[]
li x11, 0x200   #y[]
li x0 ,0
jal x1, strcpy
li x10,1
ecall
end:
j end

strcpy:
    li x12, 0

for:
    add x16, x10, x12  # because it's a character its a single byte so we directly add instead of shifting.
    add x17, x11, x12  
  
    lb x19 , 0(x17)   # load valye form y[] onto x19 register
    sb x19, 0(x16)      # transfer the value from x19 onto x[] 

        beq x19 , x0, Else   # checking the condition if y[i] = '\0' 
        addi x12, x12, 1    # i= i+1
        j for

    Else:
    jalr x0, 0(x1)  # returning to funciton.
