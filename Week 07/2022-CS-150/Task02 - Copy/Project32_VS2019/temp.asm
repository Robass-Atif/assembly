include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
dataArray dword 5 dup(0)
datasum dword 0
message1 byte "sum is greater than eax",0
message2 byte "sum is less than eax",0



.code

sum proc
jg l1
	jl l2
	je l3

	l1:
	mov edx,offset message2
	call writestring
	exit
	l2:
	mov edx, offset message1
	call writestring

	l3:
		exit

sum endp

main proc
mov ecx,5
mov esi,0
l:
	call readint
	add datasum,eax
	mov dataArray[esi],eax
	add esi,type dataArray
	loop l

	call readint
	cmp eax,datasum
	call sum


	invoke ExitProcess,0
main endp
end main