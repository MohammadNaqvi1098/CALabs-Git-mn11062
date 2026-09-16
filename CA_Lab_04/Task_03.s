.data
arr:
    .word 9, 4, 7, 1, 3

.text
.globl main
.globl bubble
.globl bubble_sort

main:
    la a0, arr
    li a1, 5
    jal ra, bubble

    li a0, 10
    ecall

bubble:
bubble_sort:
    beq a0, x0, done        # if a == NULL, return
    beq a1, x0, done        # if len == 0, return

    addi t0, x0, 0          # i = 0
outer_loop:
    bge t0, a1, done        # for i < len

    add t1, a0, t0          # &a[i]
    addi t2, t0, 0          # j = i

inner_loop:
    bge t2, a1, end_outer   # for j < len

    slli t3, t2, 2          # j * 4
    add t4, a0, t3          # &a[j]

    lw t5, 0(t1)            # a[i]
    lw t6, 0(t4)            # a[j]

    blt t5, t6, swap        # if a[i] < a[j]
    j next_j

swap:
    sw t6, 0(t1)            # a[i] = a[j]
    sw t5, 0(t4)            # a[j] = temp

next_j:
    addi t2, t2, 1          # j++
    j inner_loop

end_outer:
    addi t0, t0, 1          # i++
    j outer_loop

done:
    ret
