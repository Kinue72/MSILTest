.assembly extern legacy library mscorlib {}

.assembly ldarg.exe {}

.class _ldarg {

.method public static int32 test(int32,int32,int32,int32) {
        ldarg.0
		ldarg.1
		add
		ldarg.2
		add
		ldarg.3
		add
		ldarg 3
		add
		ldarg.s 3
		add
        ret
}

.method public static int32 main() {
.entrypoint
.maxstack       10

        ldc.i4.0
        ldc.i4.1
        ldc.i4.2
        ldc.i4.3
        call    int32 _ldarg::test(int32,int32,int32,int32)
        ret
}
}

