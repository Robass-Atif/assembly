include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
     
	 mov ebx,5
	 imul eax,ebx,4
	 mov ebx,3
	 add ebx,7
	 sub eax,ebx
	 imul eax,eax,21
	 call writeint 


	 




	invoke ExitProcess,0
main endp
end main