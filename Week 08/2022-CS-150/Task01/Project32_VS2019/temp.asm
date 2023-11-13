include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data


.code
main proc

mov ebx,0F16Bh
mov eax,ebx

shrd eax,ebx,32
call writehex


	invoke ExitProcess,0
main endp
end main