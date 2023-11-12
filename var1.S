.data
N:
.word 5
M:
.word 4
matrix:
.word 10, 11, 12, 11, 22
.word 2, 21, 22, 100, 6
.word 3, 1, 31, 12, 15
.word 41, 44, 4, 17, 18
result:
.word 0

.text

main:
la a2, N # la - загрузка адерса  
la a3, M
la a4, matrix
la a5, result
call process
la a2, M
la a3, result
call print
call exit

print:
lw t1, 0(a2)

addi t2, x0, 0  # addi  
addi a0, x0, 1 # print_int ecall
lw a1, 0(a3)
ecall

ret

exit:
addi a0, x0, 10
ecall

process:
lw t1, 0(a2) # N
lw t2, 0(a3) # M

addi t4, x0, 0 # row pointer
lw t5,  0(a4) # запишем первое значение матрицы как наименьшее


init:
addi t3, x0, 0 # row element number

cycle:
lw t6, 0(a4) # load value from array
addi a4, a4, 4 # increment array pointer
ble t5, t6, if2  #if t5>t6 go to if2
mv t5,t6         #else t5 = t6 
if2:
addi t3, t3, 1
blt t3, t1, cycle

sw t5, 0(a5) # save result to resulting array


addi t4, t4, 1
blt t4, t2, init
ret
