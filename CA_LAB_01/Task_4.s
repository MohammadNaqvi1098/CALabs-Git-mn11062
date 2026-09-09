.text
.globl main
main:


    li x10, 0x78786464
    li x11, 0xA8A81919
    li x5, 0x100
    li x6, 0x1F0

    sw x10, 0(x5) # store x10 at address in x5


    sw x11, 0(x6) # store x11 at address in x6

    lhu x12, 0(x5) # load word from address in x5 to x12


    lh x13, 0(x6) # load word from address in x6

    lb x14, 0(x6) # load byte from address in x6 to x14



end:
    j end