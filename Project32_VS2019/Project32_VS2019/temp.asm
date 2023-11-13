include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
myByte BYTE ?
myWord WORD ?

.code
main proc

	invoke ExitProcess,0
main endp
end main