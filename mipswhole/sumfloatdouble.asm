.data
mssg: .asciiz"the sum of two mos is"
a: .double 5.99
b: .double 6.99
.text
ldc1 $f0,a
ldc1 $f1,b
add.d $f4,$f2,$f0
li $v0,4
la $a0,mssg
syscall
li $v0,3
mov.d $f12,$f4
syscall

