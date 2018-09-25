

.data 
	V: 	.word 1, 2 ,3
	M3X3: 	.word 1, 2 , 3 #,4 , 5, 6 , 7, 8,9
	R:   	.word 0, 0 ,0  
	
.text 
	addi $s0, $zero ,0  #i
	addi $s1, $zero, 0 #j 
	addi $s3, $zero, 3 #bandera
	addi $t3, $zero, 0	
	la $t0,  V
	la $t1,	 M3X3
	la $t2,  R
	
while:
	slti $t3, $s0, 3
	beq $t3, $zero, exit
	addi $s0, $s0,1
	
	
	addi $sp, $sp, -12
	sw $t0, 0($sp)
	sw $t1, 4($sp)
	sw $t2, 8($sp)
	jal productmatrix

productmatrix:
	lw $a0, 0($sp)
	lw $a1, 4($sp)
	lw $a2, 8($sp)
	mul $t0, $a0, $a1
	jr $ra
	
	
exit:
	