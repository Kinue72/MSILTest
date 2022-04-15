.assembly extern legacy library mscorlib {}
.assembly or.exe{}

.class public _or {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	ldc.i4.1
	or
	ret
}
}
