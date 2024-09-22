# Pow Function -- computes a^b
# Inputs: a0=a, a1=b
# Outputs: a0=a^b

pow: 
    mv a2, a0      #save a0 in a2
    li a0, 1       #save a0 to 1
1:
    beqz a1, 1f     #if a1=0 then done -- jumps to the 1: numerica label below
    mul  a0, a0, a2 #else, multiply
    addi a1, a1, -1 #decrement the counter
    j 1b  # jump to 1b (repeat)
1:
    ret             #return
    