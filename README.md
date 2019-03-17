# sample-c2goasm

```
$ go test -bench .
goos: darwin
goarch: amd64
pkg: github.com/c-bata/sample-c2goasm
BenchmarkSumFloat64_256-4                5000000               267 ns/op
BenchmarkSumFloat64_1024-4               1000000              1161 ns/op
BenchmarkSumFloat64_8192-4                200000              9568 ns/op
BenchmarkSumFloat64_AVX2_256-4           2000000               660 ns/op
BenchmarkSumFloat64_AVX2_1024-4           500000              2661 ns/op
BenchmarkSumFloat64_AVX2_8192-4           100000             21450 ns/op
PASS
ok      github.com/c-bata/sample-c2goasm        10.555s
```

