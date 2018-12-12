.data
str: .asciiz "Enter a number "
str1: .asciiz "Minimum moves with discs "

.text
la $a0,str
li $v0,4
syscall
li $v0,5
syscall
move $t0,$v0
beqz $t0,end

li $t1,2
li $t2,0

loop:
mul $t2, $t2, $t1
addi $t2, $t2, 1
addi $t0, $t0, -1
bnez $t0,loop
la $a0,str1
li $v0,4
syscall

move $a0,$t2

li $v0,1
syscall
end:
li $v0,10
syscall

