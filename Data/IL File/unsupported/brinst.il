.assembly extern legacy library mscorlib {}

.assembly brinst.exe{}

.class public _brinst {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4	0x1
	brinst	next0
next0:
	ldc.i4	0x1
	brinst.s PASS

FAIL:
	ldc.i4	0x0
	ret
PASS:
	ldc.i4 100
	ret
}
}
