.data
space: .asciiz" "
endl: .asciiz"\n"
star: .asciiz"*"


.text
li $t0,5
li $t1,0
li $t2,0
fori:
beq $t0,$t1,exit
addi $t1,$t1,1
li $v0,4
la $a0,endl
syscall
li $t2,0
forj:
beq $t2,$t0,fori
bge $t2,$t1,fori
li $v0,4
la $a0,space 
syscall
li $v0,4
la $a0,star
syscall
addi $t2,$t2,1
j forj
syscall

exit:
li $v0,10
syscall

