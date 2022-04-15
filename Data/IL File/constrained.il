.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}

.assembly extern legacy library mscorlib {}

.assembly constrained.exe{}

.class public _constrained {

.method public void .ctor() {
.maxstack  8
	ldarg.0
	call instance void [mscorlib]System.Object::.ctor() 
	ret
}

.method public static void  M<([mscorlib]System.Object) T>(!!0 t) cil managed {
.maxstack  1
.locals init (class [mscorlib]System.Type V_0)
	ldarga.s   t
	constrained. !!0
	callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
	stloc.0
	ldloc.0
	call       void [System.Console]System.Console::WriteLine(object)
	ret
}

.method public static int32 main() {
.entrypoint
.maxstack  8
    ldstr      "Hello"
    call       void _constrained::M<string>(!!0)
    ldc.i4.3
	call       void _constrained::M<int32>(!!0)
	ldc.i4.1
	ret
}


}
