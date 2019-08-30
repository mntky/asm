section .text
	global _start

_start:
	jmp mycode
	mytext: db "Hello world.", 0x0a

mycode:
	mov al, 1
	xor rdi, rdi
	add rdi, 1
	lea rsi, [rel mytext]
	xor rdx, rdx
	add rdx, 13
	syscall

	xor rax, rax
	add rax, 60
	xor rdi, rdi
	add rdi, 1
	syscall

