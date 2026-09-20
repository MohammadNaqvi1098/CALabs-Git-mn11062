.text
.globl main
main:
	li x10, 4               # g
	li x11, 3               # h
	li x12, 2               # i
	li x13, 1               # j

	jal x1, leaf_example

	mv x11, x10             # move f to   argument register
	li x10, 1               
	j exit

leaf_example:
	addi sp, sp, -12     # making space in the stack
	sw x18, 0(sp)
	sw x19, 4(sp)
	sw x20, 8(sp)

	add x18, x10, x11       # g + h
	add x19, x12, x13       # i + j
	sub x20, x18, x19       # f = (g + h) - (i + j)
	mv x10, x20             # return f in x10

	lw x18, 0(sp)            
	lw x19, 4(sp)
	lw x20, 8(sp)
	addi sp, sp, 12          #deleting the space.
	jalr x0, 0(x1)

exit:
	j exit



