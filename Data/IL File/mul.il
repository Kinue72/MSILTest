.assembly extern legacy library mscorlib {}
.assembly mul.exe { }

.class public _mul {

.method public static int32 main(){
.entrypoint
	ldc.i4.1
	ldc.i4.2
	mul
	ldc.i4.2
	mul.ovf
	ldc.i4.3
	mul.ovf.un 
	ret
}
}