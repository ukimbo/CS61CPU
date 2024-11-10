addi a0, x0, 1
jal t0, label_jal
addi a0, x0, 1
label_jal:
addi a0, x0, 0
addi t1, t0, -4

addi t2, x0, 44
addi a0, x0, 1
jalr t0, t2, 4
addi a0, x0, 1
label_jalr:
addi a0, x0, 0
addi t1, t0, -4

j end
end: