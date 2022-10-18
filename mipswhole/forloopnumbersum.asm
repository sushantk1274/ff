.data 
msg1: .asciiz"enter the number"
msg2: .asciiz"the sum of total 5 number is:"
.text
li $t0,5
li $t1,0

for:
beq $t0,$t1,exit
li $v0,4
la $a0,msg1
syscall
li $v0,5
syscall
move $t2,$v0
add $t6,$t6,$t2
addi $t1,$t1,1
j for
syscall

exit:
li $v0,4
la $a0,msg2
syscall
li $v0,1
move $a0,$t6
syscall
li $v0,10
syscall











