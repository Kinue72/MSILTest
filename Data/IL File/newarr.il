.assembly extern legacy library mscorlib {}
.assembly newarr.exe{}

.class public _newarr {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	newarr		[mscorlib]System.Int32
	pop
	ldc.i4.1
	ret
}
}
