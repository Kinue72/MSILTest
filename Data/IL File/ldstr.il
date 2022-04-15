.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}

.assembly extern legacy library mscorlib {}
.assembly ldstr.exe{}

.class public _ldstr {

.method public static	int32 main() {
.entrypoint
.locals		(int32)
.maxstack		2
	ldstr		"ITS WORKING!!"
	call       void [System.Console]System.Console::WriteLine(string)
	ldc.i4.1
	ret
}
}
