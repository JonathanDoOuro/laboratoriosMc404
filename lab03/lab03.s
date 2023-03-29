main:
    add s1, zero, zero #soma dos pares
    add s2, zero, zero #soma dos impares

    #numero para comparar
    addi s3, zero, 1

loop:
    #le um numero e salva em s0
    addi t0, zero, 4
    ecall
    add s0, zero, a0

    #quando a entrada for zero o programa para
    beq s0, zero, para

    #par se for zero e impar se for um
    and s4, s0, s3

    #se for zero pula para somar aos pares, 
    #caso contratio, soma aos impares
    beq s4, zero, par
    add s2, s2, s0
    j loop
par:
    #soma nos numeros pares
    add s1, s1, s0
    j loop

para:
    #calcula o resultado
    sub s5, s2, s1 # s5 = s2 - s1

    #salva o resultado em a0 e imprime
    add a0, zero, s5
    addi t0, zero, 1
    ecall
    
    ret