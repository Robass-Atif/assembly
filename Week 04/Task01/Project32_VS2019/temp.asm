include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
myByte word 1.34
myWord WORD ?

.code
main proc
	mov eax,myByte
    call writeint

	invoke ExitProcess,0
main endp
end main