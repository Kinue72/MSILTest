.assembly extern legacy library mscorlib {}
.assembly xor.exe{}

.class public _xor {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	ldc.i4.2
	xor
	ret
}
}
