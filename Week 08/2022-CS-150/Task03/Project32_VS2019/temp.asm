include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data


.code
main proc

mov eax,123
shl eax,6
call writeint

	invoke ExitProcess,0
main endp
end main