.data
mssg1: .asciiz" please input a number"
mssg2: .asciiz"the number is 1 so true"
mssg3: .asciiz"the number is 3 so false"



.text

li $t1,1
main:
li $v0,4
la $a0,mssg1
syscall
li $v0,5
syscall
move $t0,$v0
beq $t1,$t0,true
li $v0,4
la $a0,mssg3
syscall
j exit
syscall
true:
li $v0,4
la $a0,mssg2
syscall
j exit
syscall
exit:
li $v0,10
syscall




