age: .word 42

get_age:
    la t1, age
    lw a0, (t1)
    ret