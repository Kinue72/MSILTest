.assembly extern legacy library mscorlib {}

.assembly brtrue.exe{}

.class public _brtrue {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4	0x1
	brtrue	next0
next0:
	ldc.i4	0x1
	brtrue.s PASS

FAIL:
	ldc.i4	0x0
	ret
PASS:
	ldc.i4 100
	ret
}
}
