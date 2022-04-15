.assembly extern legacy library mscorlib {}

.assembly clt.exe{}

.class public _clt {
.method public static int32 main() {
.entrypoint
.maxstack	10
    ldc.i4.1
    ldc.i4.1
    clt
	ldc.i4.1
	clt.un
	ret
}
}
