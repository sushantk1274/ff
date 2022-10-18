.data
msg1: .asciiz"\nthe value of i is\n"
msg2: .asciiz"\nthe value of j is\n"
.text

li $t0,0  #i
li $t1,0  #j
li $t2,5  # size
fori:
beq $t0,$t2,exit
li $v0,4
la $a0,msg1
syscall
li $v0,1
move $a0,$t0
syscall
addi $t0,$t0,1
li $t1,0
forj:
li $v0,4
la $a0,msg2
syscall
beq $t1,$t0,fori
li $v0,1
move $a0,$t1
syscall
addi $t1,$t1,1
j forj
syscall

exit:
li $v0,10
syscall 




