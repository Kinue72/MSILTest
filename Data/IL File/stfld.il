.assembly extern legacy library mscorlib {}
.assembly stfld.exe{}


.class public _stfld {

.field public  int32 test

.method public void test() { 
        ldarg   0
        ldc.i4.1
        stfld   int32   _stfld::test
		ret
}



.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	ret
}
}
