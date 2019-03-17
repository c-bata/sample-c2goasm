package c2goasm

import (
	"math/rand"
	"testing"
)

func init() {
	rand.Seed(0)
}

func TestSumFloat64(t *testing.T) {
	input := []float64{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	var expected float64 = 55

	actual := SumFloat64(input)
	if actual != expected {
		t.Errorf("expect %f, but got %f", expected, actual)
	}
}

func TestSumFloat64Avx2(t *testing.T) {
	input := []float64{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	var expected float64 = 55

	actual := SumFloat64Avx2(input)
	if actual != expected {
		t.Errorf("expect %f, but got %f", expected, actual)
	}
}

func initializeFloat64Array(n int) []float64 {
	var max float64 = 1024
	var min float64 = 0
	x := make([]float64, n)
	for i := 0; i < n; i++ {
		x[i] = rand.Float64() * (max - min) + min
	}
	return x
}

func benchmarkFloat64Sum(b *testing.B, n int) {
	x := initializeFloat64Array(n)
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		SumFloat64(x)
	}
}

func benchmarkFloat64SumAvx2(b *testing.B, n int) {
	x := initializeFloat64Array(n)
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		SumFloat64Avx2(x)
	}
}

func BenchmarkSumFloat64_256(b *testing.B) {
	benchmarkFloat64Sum(b, 256)
}

func BenchmarkSumFloat64_1024(b *testing.B) {
	benchmarkFloat64Sum(b, 1024)
}

func BenchmarkSumFloat64_8192(b *testing.B) {
	benchmarkFloat64Sum(b, 8192)
}

func BenchmarkSumFloat64_AVX2_256(b *testing.B) {
	benchmarkFloat64SumAvx2(b, 256)
}

func BenchmarkSumFloat64_AVX2_1024(b *testing.B) {
	benchmarkFloat64SumAvx2(b, 1024)
}

func BenchmarkSumFloat64_AVX2_8192(b *testing.B) {
	benchmarkFloat64SumAvx2(b, 8192)
}
