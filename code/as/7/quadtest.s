# quadtest - An example of quad integers
.section .data
data1:
   .int 1, -1, 46365, -333252322, 0
data2:
   .quad 1, -1, 46365, -333252322, 0
.section .text
.globl _start
_start:
   nop
   movl $1,%eax
   movl $0,%ebx
   int $0x80
