#Written by Tyler Beetle
.data
message1: .asciiz "\n Welcome! What is your name?\n"
username: .space 20
message2: .asciiz "\n Welcome "
.text
#Prompting user
li $v0,4 
la $a0, message1
syscall
#Getting user input
li $v0, 8 
la $a0, username
li $a1, 20 
syscall
#Displaying the second message
li $v0, 4
la $a0, message2
syscall
#Displaying the name
li $v0, 4
la $a0, username
syscall