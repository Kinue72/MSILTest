.assembly extern legacy library mscorlib {}


.assembly call.exe{}

.class public _call {

.method public public static int32 test() {
	ldc.i4.1
	ret
}

.method public static int32 main() {
.entrypoint
.maxstack	10
	call	int32 _call::test()
	ret
}
}



