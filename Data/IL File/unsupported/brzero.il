.assembly extern legacy library mscorlib {}

.assembly brzero.exe{}

.class public _brzero {

.method public static int32 main() {
.entrypoint
.maxstack	10

	ldc.i4	0x0
	brzero next0
next0:
	ldc.i4	0x0
	brzero.s PASS

FAIL:
	ldc.i4	0x0
	ret
PASS:
	ldc.i4 100
	ret
}
}
