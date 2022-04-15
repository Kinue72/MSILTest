.assembly extern legacy library mscorlib {}

.assembly ret.exe{}

.class public _ret {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	ret
}
}
