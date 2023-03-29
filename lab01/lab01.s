main:
    addi t0, zero, 0 # i
    addi t1, zero, 0 # a
    addi t2, zero, 3 # limite

for:
    beq t0, t2, fim # se i == limite para
    add t1, t1, t0 # a = a + i
    addi t0, t0, 1 # i++

    j for

fim:
    ret
