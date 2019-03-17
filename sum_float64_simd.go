package c2goasm

import "unsafe"

//go:noescape
func __sum_float64(buf, len, res unsafe.Pointer)

func SumFloat64Avx2(a []float64) float64 {
	var (
		p1 = unsafe.Pointer(&a[0])
		p2 = unsafe.Pointer(uintptr(len(a)))
		res float64
	)
	__sum_float64(p1, p2, unsafe.Pointer(&res))
	return res
}
