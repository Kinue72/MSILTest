.assembly extern legacy library mscorlib {}
.assembly rethrow.exe{}

.class public _rethrow {

.method public static int32 main() {
.entrypoint
.maxstack	10
try_start:
	AEtry_start:
		newobj	instance void [mscorlib]System.ArithmeticException::.ctor() 
		throw
	AEtry_end:
		leave.s		FAIL
	AEhandler_start:
		rethrow
	AEhandler_end:
	done:
		leave		PASS
try_end:
	br	FAIL
aHandler_start:
	pop
	leave	done2
aHandler_end:
done2:
	br	FAIL

PASS:
	ldc.i4 100
	ret
FAIL:
	ldc.i4	0x0
	ret
.try AEtry_start to AEtry_end catch [mscorlib]System.ArithmeticException handler AEhandler_start to AEhandler_end
.try try_start to try_end catch [mscorlib]System.Exception handler aHandler_start to aHandler_end
}
}
