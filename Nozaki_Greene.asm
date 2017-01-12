# @Ben Greene and Sam Nozaki
# HW2 - Simple Multiplication

# put the starting address of the data section of memory into reg s0
li $s0,0x10010000

# load the first 2 values from the data section
# of memory into registers t1 and t2
lw $t1,0($s0)
lw $t2,4($s0)


#test to see if second multiplicand is positive
postest:
ble $t2, 0, negmult

#positive loop
posmult:
ble $t2, 0, end
add $t3, $t3, $t1
sub $t2, $t2, 1
j posmult

#negative loop
negmult:
beq $t2, 0, changesign
add $t3, $t3, $t1
add $t2, $t2, 1
j negmult

#change sign
changesign:
sub $t3, $zero, $t3

end:
# store the value in t3 to the 3rd slot in the data section of mem
sw $t3,8($s0)

# the values after .data will be stored in the data section
# of memory in the order listed as 32 bit integers
.data
5
-6
