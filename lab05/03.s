.data
#2 linhas e 3 colunas (2 x 3)
matriz:
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0

.text
main:
    lui s0, %hi(matriz)
    addi s0, s0, %lo(matriz)

    addi s1, zero, 2
    addi s2, zero, 3

    addi s3, zero, 0
    loopLinha:
        beq s3, s1, fim
        addi s4, zero, 0
        loopColuna:
            beq s4, s2, fimLoopColuna
            #soma i + j
            add s5, s3, s4
            #salva o valor na matriz
            sw s5, s0, 0
            #incrementa
            addi s4, s4, 1
            addi s0, s0, 4
            j loopColuna
        fimLoopColuna:
            addi s3, s3, 1
            j loopLinha
    fim:
        addi s6, zero, 6
        lui s0, %hi(matriz)
        addi s0, s0, %lo(matriz)
        loop:
            beq s6, zero, fim2
            lw a0, s0, 0
            addi t0, zero, 1
            ecall
            addi s6, s6, -1
            addi s0, s0, 4
            j loop
        fim2:
            ret