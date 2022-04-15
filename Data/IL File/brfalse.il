.assembly extern legacy library mscorlib {}

.assembly brfalse.exe{}

.class public _brfalse {

.method public static int32 main() {
.entrypoint
.maxstack	10

	ldc.i4	0x0
	brfalse next0
next0:
	ldc.i4	0x0
	brfalse.s PASS

FAIL:
	ldc.i4	0x0
	ret
PASS:
	ldc.i4 100
	ret
}
}
