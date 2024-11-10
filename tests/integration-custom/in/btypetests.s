addi t0, x0, 5      
addi t1, x0, 5      
addi t2, x0, 10     
addi s0, x0, -5     
addi a0, x0, 1               
beq t0, t1, label_equal      
addi a0, x0, 1               
label_equal:
addi a0, x0, 0               
addi a0, x0, 1               
bne t0, t2, label_not_equal  
addi a0, x0, 1               
label_not_equal:
addi a0, x0, 0               
addi a0, x0, 1               
blt s0, t0, label_less_than  
addi a0, x0, 1              
label_less_than:
addi a0, x0, 0               
addi a0, x0, 1                          
bltu t1, t2, label_less_than_unsigned   
addi a0, x0, 1                          
label_less_than_unsigned:
addi a0, x0, 0                          
addi a0, x0, 1                   
bge t0, s0, label_greater_equal  
addi a0, x0, 1                   
label_greater_equal:
addi a0, x0, 0                   
addi a0, x0, 1                         
bgeu t2, t1, label_greater_equal_unsigned  
addi a0, x0, 1                         
label_greater_equal_unsigned:
addi a0, x0, 0                         