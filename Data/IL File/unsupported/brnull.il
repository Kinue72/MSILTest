.assembly extern legacy library mscorlib {}

.assembly brnull.exe{}

.class public _brnull {

.method public static int32 main() {
.entrypoint
.maxstack	10

	ldc.i4	0x0
	brnull next0
next0:
	ldc.i4	0x0
	brnull.s PASS

FAIL:
	ldc.i4	0x0
	ret
PASS:
	ldc.i4 100
	ret
}
}
