.data
newline: .asciiz "\n"

msg: .asciiz "The result of addition is: "
msg1: .asciiz "End main"

.text

.globl	main
main:

li $t0,5
li $t1,5

add $t3,$t0,$t1

li $v0,4
la $a0,msg
syscall

li $v0,1
move $a0,$t3
syscall

li $v0,4
la $a0,newline
syscall

li $v0,4
la $a0,msg1
syscall

li $v0,10
syscall
