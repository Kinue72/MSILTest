.assembly extern legacy library mscorlib {}
.assembly stsfld.exe{}

.class public _stsfld {

.field public static	int32[] arr

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	newarr		[mscorlib]System.Int32
	stsfld		int32[] _stsfld::arr
	ldc.i4.1
	ret
}
}
