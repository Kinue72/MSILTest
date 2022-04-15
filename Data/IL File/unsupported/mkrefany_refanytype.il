.assembly extern legacy library mscorlib {}
.assembly mkrefany_refanytype.exe { }

.class public _mkrefany_refanytype {

.method public static int32 f(){
	ldc.i4 100
	ret
}
.method public static int32 main(){
.entrypoint
	call int32 _mkrefany_refanytype::f()
	mkrefany int32
	refanytype
	pop
	ldc.i4.1
	ret
}
}