.rodata
vetor0: 
    .word 10
    .word 20
    .word 30
    .word 40
    .word 50

vetor1: 
    .word 10
    .word 20
    .word 30
    .word 40
    .word 50

.data
vetor2:
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    
.text
main:
    lui s0, %hi(vetor0)
    addi s0, s0, %lo(vetor0)

    lui s1, %hi(vetor1)
    addi s1, s1, %lo(vetor1)

    lui s2, %hi(vetor2)
    addi s2, s2, %lo(vetor2)

    #limite de iteracoes
    addi s3, zero, 5   
    loop:
        beq s3, zero, imprimir
        addi s3, s3, -1
        #-------
        #carrega os valores do vetor0 e vetor1
        lw s4, s0, 0
        lw s5, s1, 0
        #soma os dois valores
        add s6, s4, s5
        #guarda a soma no vetor2
        sw s6, s2, 0
        #incrementa a posicao de cada vetor
        addi s0, s0, 4
        addi s1, s1, 4
        addi s2, s2, 4
        #------
        j loop
imprimir:
    lui s2, %hi(vetor2)
    addi s2, s2, %lo(vetor2)

    addi s7, zero, 5
    loop2:
        beq s7, zero, fim
        addi s7, s7, -1
        #carrega o valor do vetor2 e imprime
        lw a0, s2, 0
        addi t0, zero, 1
        ecall
        #incrementa a posicao do vetor2
        addi s2, s2, 4
        j loop2
    fim:
        ret