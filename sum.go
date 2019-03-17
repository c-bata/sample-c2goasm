package c2goasm

func SumFloat64(a []float64) float64 {
	var sum float64
	for i := range a {
		sum += a[i]
	}
	return sum
}
