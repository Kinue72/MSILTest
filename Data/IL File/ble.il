.assembly extern legacy library mscorlib {}

.assembly ble.exe{}

.class public _ble {

.method public	static int32 main() {
.entrypoint

	ldc.i4 		100
	ldc.i4 		100
	ble			next0
	br			fail
next0:
	ldc.i4 		100
	ldc.i4 		140
	ble.s		fail
	br			next1
next1:
    ldc.i4 		100
    ldc.i4 		110
    ble.un      fail
    br          next2
next2:
    ldc.i4 		100
    ldc.i4 		90
	ble.un.s	pass
	br			fail

pass:
	ldc.i4 		100
	br			end
fail:
	ldc.i4		0x0
	br			end
end:
	ret
}
}