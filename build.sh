#!/bin/sh

# c2goasm
# https://github.com/minio/c2goasm
# https://blog.minio.io/c2goasm-c-to-go-assembly-bb723d2f777f
$GOPATH/src/github.com/minio/c2goasm/c2goasm -a -f _lib/sum_float64.s sum_float64_simd.s

c2goasm -a -f _lib/add_float32_avx2_intrinsics.s add_float32.s
