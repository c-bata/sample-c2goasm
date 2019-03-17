package c2goasm

import "unsafe"

//go:noescape
func __add_float32(buf1, buf2, res unsafe.Pointer)

func AddFloat32Avx2(buf1 []float32, buf2 []float32) []float32 {
	_ = buf1[7]
	_ = buf2[7]

	var (
		p1 = unsafe.Pointer(&buf1[0])
		p2 = unsafe.Pointer(&buf2[0])
		p3 = make([]float32, 8)
	)
	__add_float32(p1, p2, unsafe.Pointer(&p3[0]))
	return p3
}
