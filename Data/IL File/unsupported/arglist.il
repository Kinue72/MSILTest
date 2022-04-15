.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}

.assembly extern legacy library mscorlib {}

.assembly break.exe {}

.class public _arglist {

.method public static int32 main() {
.entrypoint
.maxstack	6
	arglist
	call       void [System.Console]System.Console::WriteLine(object)
	ret
}
}
