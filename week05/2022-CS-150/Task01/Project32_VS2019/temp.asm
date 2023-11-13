Include Irvine32.inc

.data
abc word 50 dup(5)
dg word (lengthof abc)

.code
main PROC

mov eax, sizeof abc
call writeint
call crlf
mov eax,0
mov esi,offset abc
mov ax,[esi+100*2]
call writeint
call crlf

mov eax, 0
mov ecx,50
mov esi,0
l1:
add ax,abc[esi]
inc esi
inc esi
loop l1
call writeint
call crlf



mov ebx, lengthof abc

cdq
div ebx
call writeint




exit
main ENDP
END main