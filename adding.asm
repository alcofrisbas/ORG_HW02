.data
x: .word 1
y: .word 0x900cc00d
n: .word -1

.text
lw $t2, x
lw $t3, n
addu $t1,$t2,$t3
