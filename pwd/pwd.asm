section .text
	global _start

_start:
	xor rdx, rdx
	push rdx
	mov r10, 0x6477702f6e69622f
	push r10
	mov rdi, rsp
	push rdx
	push rdi
	mov rsi, rsp
	lea rax, [rdx+59]
	syscall
