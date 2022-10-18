.data

mata1: .asciiz "\nwe are inside main\n"
mata2: .asciiz "\nwe are inside fun\n"

.text
main:
li $v0,4
la $a0,mata1
syscall
j fun
syscall

fun:
li $v0,4
la $a0,mata2
syscall
j exit
syscall

exit:
li $v0,10
syscall


