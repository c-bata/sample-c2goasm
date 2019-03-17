void sum_float64(double buf[], int len, double *res) {
    double acc = 0.0;

    #pragma clang loop vectorize(enable)
    for(int i = 0; i < len; i++) {
        acc += buf[i];
    }
    *res = acc;
}
