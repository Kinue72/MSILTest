.assembly extern legacy library mscorlib {}

.assembly br.exe{}

.class public _br {

.method public static int32 main() {
.entrypoint
.maxstack	10
	
	br next0
next0:
	br.s PASS
	

FAIL:
	ldc.i4	0x0
	ret

PASS:
	ldc.i4 100
	ret
}
}
