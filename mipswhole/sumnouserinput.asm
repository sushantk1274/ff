.data
# we are sum two nos using no user input
mssg: .asciiz "the sum of two nos is"
a: .word 2
b: .word 5
.text
lw $t0,a
lw $t1,b
add $t2,$t1,$t0
li $v0,4
la $a0,mssg
syscall
li $v0,1
move $a0,$t2
syscall

