.assembly extern legacy library mscorlib {}

.assembly callvirt.exe{}

.class public _callvirt {

.method public void .ctor() {
.maxstack	10
	ldarg.0
	call instance void [mscorlib]System.Object::.ctor() 
	ret
}

.method public static int32 main() {
.entrypoint
.maxstack	10
	newobj  instance void _callvirt::.ctor()
	callvirt     instance int32 [mscorlib]System.Object::GetHashCode()
	ret
}
}
