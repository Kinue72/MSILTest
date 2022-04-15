.assembly extern legacy library mscorlib {}

.assembly ckfinite.exe{}

.class public _ckfinite {

.method public static int32 main() {
.entrypoint
.maxstack	10

try_start:
	ldc.r4		float32(0x7F800000)
	ckfinite
	pop
	leave	try_end
try_end:
	ldc.i4	0x00000000
	ret
handler_start:
	pop
	leave	done
handler_end:
done:
	ldc.i4	0x00000001
	ret
.try try_start to try_end catch [mscorlib]System.OverflowException handler handler_start to handler_end

	ldc.i4	0x0
	ret
}
}
