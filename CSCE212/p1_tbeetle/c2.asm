#Written by Tyler Beetle
.data
	valuea: .asciiz "Enter a positive value for a\n"
	valueb: .asciiz "Enter a positive value for b\n"
	valuec: .asciiz "Enter a positive value for c\n"
	valued: .asciiz "Enter a positive value for d\n"
	valueF: .asciiz "The function F = "
.text
	#Asking for a
	li $v0, 4
	la $a0, valuea
	syscall
	#Getting and moving value of a 
	li $v0, 5 
	syscall 
	move $t0, $v0
	#Asking for b 
	li $v0, 4
	la $a0, valueb
	syscall
	#Getting and moving value of b
	li $v0, 5 
	syscall
	move $t1, $v0
	#Asking for c
	li $v0, 4
	la $a0, valuec
	syscall
	#Getting and moving value of c
	li $v0, 5
	syscall
	move $t2, $v0
	#Asking and moving for d
	li $v0, 4
	la $a0, valued
	syscall
	#Getting and moving value of d
	li $v0, 5
	syscall
	move $t3, $v0
	#adds a and b together
	add $s0, $t0, $t1
	#adds c and d together
	add $s1, $t2, $t3
	#adds b and 3 together
	add $s2, $t1, 3
	#adds (b+a) to $s3
	add $s3, $s3, $s0
	#adds b+3 to $s3
	add $s3,$s3,$s2
	#subtract the value of (c+d) from $s3
	sub $s3, $s3, $s1
	#Prints out the message
	li $v0, 4
	la $a0, valueF
	syscall
	
	#output the value of F
	li $v0, 1
	move $a0, $s3
	syscall 