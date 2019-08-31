section  .text
	global _start

_start:
	xor rdx, rdx
	push rdx
	mov rax, 0x736c2f2f6e69622f
	push rax
	mov rdi, rsp

	; generate argv
	push rdx
	mov rbx, 0x6c6c617473696c2d
	push rbx
	mov rsi, rsp

	push rdx
	push rsi
	push rdi
	mov rsi, rsp
	lea rax, [rdx+59]
	syscall
