.assembly extern legacy library mscorlib {}
.assembly pop.exe{}

.class public _pop {

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
