addi t0, x0, 10
addi t1, x0, 5

add t2, t0, t1
sub s0, t0, t1
and s1, t0, t1
or a0, t0, t1
xor ra, t0, t1

sll t2, t0, t1
srl s0, t0, t1
sra s1, t0, t1

slt a0, t1, t0
slt ra, t0, t1

mul t2, t0, t1
mulh s0, t0, t1
mulhu s1, t0, t1

# Test sra (arithmetic right shift)
addi t0, x0, -16       # t0 = 0xFFFFFFF0 (negative value in two's complement)
addi t1, x0, 2         # Shift amount = 2
sra t2, t0, t1         # t2 should be 0xFFFFFFFC (arithmetic shift preserves sign)
addi a0, x0, 1

# Test srl (logical right shift)
addi t0, x0, -16       # t0 = 0xFFFFFFF0
srl t2, t0, t1         # t2 should be 0x3FFFFFFC (logical shift does not preserve sign)
addi a0, x0, 2
