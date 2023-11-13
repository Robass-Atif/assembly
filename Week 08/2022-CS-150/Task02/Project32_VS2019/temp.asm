include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data

testVal sword -170
.code
main proc
mov eax,0
mov ax,testval
call writebin
call crlf
shl eax,16
call writebin
call crlf

ror eax,16
call writebin


	invoke ExitProcess,0
main endp
end main