# movstest.s - An example of the MOVSX instruction
.section .text
.globl _start
_start:
   nop
   movw $-79, %cx
   movl $0, %ebx
   movw %cx, %bx
   movsx %cx, %eax
   mov $1, %eax
   mov $0, %ebx
   int $0x80
