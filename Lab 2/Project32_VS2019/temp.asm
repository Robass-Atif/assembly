INCLUDE Irvine32.inc
.data

.code
main PROC
mov eax,0
mov al,10010111b
call writebin
call crlf
rcr al,2
call writebin


exit
main ENDP
END main