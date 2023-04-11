.data
vetor: 
    .word 10
    .word 20
    .word 30
.text
main:
    lui s0, %hi(vetor)
    addi s0, s0, %lo(vetor)

    addi s1, zero, 3

    loop:
        beq s1, zero, felipe
        addi s1, s1, -1
        #carrega o valor do vetor
        lw a0, s0, 0
        #soma 1 no valor
        addi a0, a0, 1
        #guarda o novo falor no vetor
        sw a0, s0, 0
        addi t0, zero, 1
        ecall
        addi s0, s0, 4
        j loop
 
    felipe:
            ret