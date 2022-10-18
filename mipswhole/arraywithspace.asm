.data
msg1: .asciiz"your value is"
msg2: .asciiz"enter the value"
array: .space 8
.text
li $t0,0
li $v0,4
la $a0,msg1
syscall
li $v0,5
syscall
move $t1,$v0
sw $t1,array($t0)
li $v0,4
la $a0,msg2
syscall
lw $t2,array($t0)

li $v0,1
move $a0,$t2
syscall
li $v0,10
syscall

