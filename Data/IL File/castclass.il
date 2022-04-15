
.assembly extern legacy library mscorlib {}
.assembly castclass.exe {}

.class public _castclass {

.method public static	int32 main() {
.entrypoint
.maxstack	10
	newobj       instance void class [mscorlib]System.Collections.Generic.List`1<string>::.ctor()
	castclass    class [mscorlib]System.Collections.Generic.IReadOnlyList`1<string>
	callvirt     instance int32 [mscorlib]System.Object::GetHashCode()
	ret
}
}
