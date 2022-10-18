.data
mssg1: .asciiz"enter the number first"
mssg2: .asciiz"enter the number second"
mssg3: .asciiz"enter the number third"
.text
li $v0,4
la $a0,mssg1



syscall
li $v0
li $v0,5
syscall
move $t0,$v0
syscall
li $v0,4
la $a0,mssg2
syscall

li $v0,5
syscall
move $t1,$v0
add $t2,$t1,$t0
li $v0,1
move $a0,$t2
syscall
