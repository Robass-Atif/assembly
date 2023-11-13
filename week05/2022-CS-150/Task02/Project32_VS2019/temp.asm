Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
array1 byte "Hello World",0
array2 byte "ABC GHI XYZ",0

.code
main proc

mov esi,0
mov ecx,lengthof array1

;change the content of arrays 


l1:
mov al,array1[esi]
mov bl,array2[esi]

mov array1[esi],bl
mov array2[esi],al
inc esi

loop l1

;print array2 elements using array1 name

mov ecx, lengthof array1
mov esi,0
mov eax,0
L2:
mov al,array1[esi]
call writechar
inc esi
loop L2
call crlf
 mov ecx ,lengthof array1
L3:
mov al,array1[esi]
call writechar
inc esi
loop L3

     

	invoke ExitProcess,0
main endp
end main