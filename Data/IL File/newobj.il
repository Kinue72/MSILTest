.assembly extern legacy library mscorlib {}
.assembly newobj.exe{}

.class public _newobj {

.method public void .ctor() {
.maxstack	10
	ldarg.0
	call instance void [mscorlib]System.Object::.ctor() 
	ret
}

.method public static int32 main() {
.entrypoint
.maxstack	10
	newobj  instance void _newobj::.ctor()
	pop
	ldc.i4.1
	ret
}
}
