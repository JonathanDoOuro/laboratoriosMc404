.data
vetor1: 
    .word 10
    .word 20
    .word 30
    .word 40
    .word 50

vetor2: 
    .word 10
    .word 20
    .word 30
    .word 40
    .word 50

vetor3:
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
.text
main:
    lui s0, %hi(vetor1)
    addi s0, s0, %lo(vetor1)

    lui s1, %hi(vetor2)
    addi s1, s1, %lo(vetor2)

    lui s2, %hi(vetor3)
    addi s2, s2, %lo(vetor3)


    addi s3, zero, 5   
    loop:
        beq s3, zero, felipe
        addi s3, s3, -1

        j loop
 
    felipe:
          ret