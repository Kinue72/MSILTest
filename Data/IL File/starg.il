.assembly extern legacy library mscorlib {}
.assembly starg.exe{}

.class public _starg {

.method public static  int32 test(int32) {
.maxstack       5
        ldarg.s 0
        starg.s 0
        ldarg 0
		starg 0
		ldarg 0
        ret
}

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	call  int32 _starg::test(int32)
	ret
}
}
