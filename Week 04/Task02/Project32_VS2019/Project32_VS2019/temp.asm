INCLUDE Irvine32.inc
.data
	helo textequ <mov eax,5>
.code
main PROC
	
	helo

	call writeint
exit
main ENDP
END main