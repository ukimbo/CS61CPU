addi s0, x0, 0x100
addi t0, x0, 0xAA
sb t0, 0(s0)
lb t1, 0(s0)
addi a0, x0, 1

addi t0, x0, 0x200
sh t0, 2(s0)
lh t1, 2(s0)
addi a0, x0, 2

addi t0, x0, 0x400
sw t0, 4(s0)
lw t1, 4(s0)
addi a0, x0, 3
