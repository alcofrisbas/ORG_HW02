# @Sherri Goings
# HW2 - Simple Multiplication
# Starting code to load and store numbers in memory

# put the starting address of the data section of memory into reg s0
li $s0,0x10010000

# load the first 2 values from the data section
# of memory into registers t1 and t2
lw $t1,0($s0)
lw $t2,4($s0)

# compute something, simple addition as an example
# you will do your multiplication here
add $t3, $t1, $t2


# store the value in t3 to the 3rd slot in the data section of mem
sw $t3,8($s0)

# the values after .data will be stored in the data section
# of memory in the order listed as 32 bit integers
.data
5
6

