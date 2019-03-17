#!/bin/sh

set -e

# Generate x86 assembly
# https://clang.llvm.org/docs/genindex.html
# https://llvm.org/docs/Vectorizers.html
/usr/local/Cellar/llvm/7.0.1/bin/clang -S -O3 -mavx2 -masm=intel -mno-red-zone -mstackrealign -mllvm -inline-threshold=1000 -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti -c sum_float64.c
/usr/local/Cellar/llvm/7.0.1/bin/clang -S -mavx2 -masm=intel -mno-red-zone -mstackrealign -mllvm -inline-threshold=1000 -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti -c add_float32_avx2_intrinsics.c

# gcc -S -mavx2 -Wall -O0 sum_avx_intrinsics.c
