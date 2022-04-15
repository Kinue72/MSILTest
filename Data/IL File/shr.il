.assembly extern legacy library mscorlib {}
.assembly shr.exe{}

.class public _shr {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	ldc.i4.1
	shr
	ldc.i4.1
	shr.un
	ret
}
}
