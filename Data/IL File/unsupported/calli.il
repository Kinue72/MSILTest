.assembly extern legacy library mscorlib {}

.assembly _calli.exe{}

.class public _calli {

.method public public static int32 test() {
	ldc.i4		0xFFAABBCC
	ret 
}


.method public static int32 main() {
.entrypoint
.maxstack	10
	ldftn		int32 _calli::test()
	calli		default int32 ()
	ldc.i4		0xFFAABBCC
	ceq
	brfalse		FAIL	
PASS:
	ldc.i4 100
	ret
FAIL:
	ldc.i4	0x0
	ret
}
}
