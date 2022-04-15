.assembly extern legacy library mscorlib {}

.assembly ldftn.exe{}

.class public _ldftn {

.method public public static int32 test() {
	ldc.i4		0xFFAABBCC
	ret 
}

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldftn int32 _ldftn::test()
	ret
}
}
