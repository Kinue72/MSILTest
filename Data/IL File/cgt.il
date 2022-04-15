.assembly extern legacy library mscorlib {}

.assembly cgt.exe{}

.class public _cgt {
.method public static int32 main() {
.entrypoint
.maxstack	10
    ldc.i4.1
    ldc.i4.1
    cgt
	ldc.i4.1
	cgt.un
	ret
}
}
