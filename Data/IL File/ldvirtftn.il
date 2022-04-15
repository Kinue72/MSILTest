.assembly extern legacy library mscorlib {}
.assembly ldvirtftn.exe{}


.class public _ldvirtftn {


.method public void .ctor() {
.maxstack	10
	ldarg.0
	call instance void [mscorlib]System.Object::.ctor() 
	ret
}


.method public static int32 main() {
.locals	(class _ldvirtftn)
.entrypoint
.maxstack	4
	newobj	    instance void _ldvirtftn::.ctor()
	ldvirtftn	instance int32 [mscorlib]System.Object::GetHashCode()
	pop
	ldc.i4.1
	ret
}
}
