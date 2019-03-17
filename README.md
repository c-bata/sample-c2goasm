# sample-c2goasm

```
$ go test -bench .
goos: darwin
goarch: amd64
pkg: github.com/c-bata/sample-c2goasm
BenchmarkSumFloat64_256-4              5000000           282 ns/op
BenchmarkSumFloat64_1024-4             1000000          1234 ns/op
BenchmarkSumFloat64_8192-4              200000         10021 ns/op
BenchmarkSumFloat64_AVX2_256-4        50000000            23.5 ns/op
BenchmarkSumFloat64_AVX2_1024-4       20000000            95.9 ns/op
BenchmarkSumFloat64_AVX2_8192-4        2000000           904 ns/op
PASS
ok      github.com/c-bata/sample-c2goasm    10.911s
```

