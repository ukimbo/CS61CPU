# Initialize registers for comparisons
addi t0, x0, 5      # t0 = 5
addi t1, x0, 5      # t1 = 5
addi t2, x0, 10     # t2 = 10
addi s0, x0, -5     # s0 = -5

# Branch if equal (beq)
addi a0, x0, 1               # Set a0 to 1 (fail by default)
beq t0, t1, label_equal      # Branch to label_equal if t0 == t1
addi a0, x0, 1               # If branch not taken, keep a0 as 1 (fail)
label_equal:
addi a0, x0, 0               # If branch taken, set a0 = 0 (success)

# Branch if not equal (bne)
addi a0, x0, 1               # Set a0 to 1 (fail by default)
bne t0, t2, label_not_equal  # Branch to label_not_equal if t0 != t2
addi a0, x0, 1               # If branch not taken, keep a0 as 1 (fail)
label_not_equal:
addi a0, x0, 0               # If branch taken, set a0 = 0 (success)

# Branch if less than (blt)
addi a0, x0, 1               # Set a0 to 1 (fail by default)
blt s0, t0, label_less_than  # Branch to label_less_than if s0 < t0
addi a0, x0, 1               # If branch not taken, keep a0 as 1 (fail)
label_less_than:
addi a0, x0, 0               # If branch taken, set a0 = 0 (success)

# Branch if less than unsigned (bltu)
addi a0, x0, 1                          # Set a0 to 1 (fail by default)
bltu t1, t2, label_less_than_unsigned   # Branch if t1 < t2 (unsigned)
addi a0, x0, 1                          # If branch not taken, keep a0 as 1 (fail)
label_less_than_unsigned:
addi a0, x0, 0                          # If branch taken, set a0 = 0 (success)

# Branch if greater than or equal (bge)
addi a0, x0, 1                   # Set a0 to 1 (fail by default)
bge t0, s0, label_greater_equal  # Branch to label if t0 >= s0
addi a0, x0, 1                   # If branch not taken, keep a0 as 1 (fail)
label_greater_equal:
addi a0, x0, 0                   # If branch taken, set a0 = 0 (success)

# Branch if greater than or equal unsigned (bgeu)
addi a0, x0, 1                         # Set a0 to 1 (fail by default)
bgeu t2, t1, label_greater_equal_unsigned  # Branch if t2 >= t1 (unsigned)
addi a0, x0, 1                         # If branch not taken, keep a0 as 1 (fail)
label_greater_equal_unsigned:
addi a0, x0, 0                         # If branch taken, set a0 = 0 (success)
