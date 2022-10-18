.data
mssg:.asciiz "enter a number"
mss:.asciiz "the number is even"
 ms:.asciiz "the number is odd"
.text
li $t1,2
li $t2,0
main:
li $v0,4
la $a0,mssg
syscall
li $v0,5
syscall
move $t0,$v0
rem $t3,$t0,$t1
beq $t3,$t2,even
li $v0,4
la $a0,ms
syscall
j exit
syscall
even:
li $v0,4
la $a0,mss
syscall
j exit
syscall

exit:
li $v0,10
syscall