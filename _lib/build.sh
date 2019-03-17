#!/bin/sh

set -e

# Generate x86 assembly
# https://clang.llvm.org/docs/genindex.html
# https://llvm.org/docs/Vectorizers.html

#clang -S -mavx2 -ffast-math -masm=intel -mno-red-zone -mstackrealign -mllvm -inline-threshold=1000 -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti -c sum_float64.c

# https://github.com/apache/arrow/blob/9d2280fb9093580fc8073e972bbae3095b75203c/go/arrow/math/Makefile#L27-L29
clang -S -target x86_64-unknown-none -masm=intel -mno-red-zone -mstackrealign -mllvm -inline-threshold=1000 -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti -O3 -fno-builtin -ffast-math -fno-jump-tables -I_lib -mavx2 -mfma -mllvm -force-vector-width=32 sum_float64.c
clang -S -mavx2 -masm=intel -mno-red-zone -mstackrealign -mllvm -inline-threshold=1000 -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti -c add_float32_avx2_intrinsics.c

# gcc -S -mavx2 -Wall -O0 sum_avx_intrinsics.c
