.assembly extern legacy library mscorlib {}
.assembly shl.exe{}

.class public _shl {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	ldc.i4.1
	shl
	ret
}
}
