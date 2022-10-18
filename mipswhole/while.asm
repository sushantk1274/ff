.data
mssg1: .asciiz"enter the numbers"
mssg2: .asciiz"the sum of 5 numbers"
.text
li $t0,5
li $t1,0
li $t2,0
while:
bne $t0,$t1,print
li $v0,4
la $a0,mssg2
syscall
li $v0,1
syscall
move $a0,$t2
syscall
j exit
syscall

exit:
li $v0,10
syscall


print:
li $v0,4
la $a0,mssg1
syscall  # it is for input and output
li $v0,5
syscall
move $t3,$v0
add $t2,$t2,$t3  # t2 is for adding sum
add $t1,$t1,1
syscall
j while
syscall




