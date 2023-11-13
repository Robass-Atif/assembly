include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
var1 byte 1,2,3,4,5
random dword ?

.code


; funtion

intsum proc uses eax ecx esi 
mov ecx,lengthof var1
mov esi,0


;loop


l:
movzx eax,var1[esi]
push eax
inc esi
loop l
 
 mov esi,0
 mov ecx,lengthof var1
 mov ebx,0
 l2:
 pop eax
 mov var1[esi],al
 add ebx,eax
 inc esi
 loop l2

 mov eax,ebx
 call writeint
 call crlf
 call writeHex
 call crlf

 call writeBin

ret
intsum endp
main proc
     mov eax,0
	 call intsum
	 call crlf
	 mov eax,0
	 call readint
	 mov ecx,eax


	 l3:
	 call random32
	 
	 call writeint
	 call crlf
	 call intsum


	 loop l3


	invoke ExitProcess,0
main endp
end main