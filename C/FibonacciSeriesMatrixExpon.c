#include <stdio.h>
void multiply(long long a[2][2], long long b[2][2]) {
    long long r[2][2] = {0};
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            for (int k = 0; k < 2; k++)
                r[i][j] += a[i][k] * b[k][j];
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++) a[i][j] = r[i][j];
}
void power(long long m[2][2], int n) {
    long long result[2][2] = {{1,0},{0,1}};
    while (n > 0) {
        if (n % 2 == 1) multiply(result, m);
        multiply(m, m);
        n /= 2;
    }
    m[0][0] = result[0][0]; m[0][1] = result[0][1];
}
int main() {
    int n = 10;
    long long m[2][2] = {{1,1},{1,0}};
    power(m, n);
    printf("Fib(%d) = %lld\n", n, m[0][1]);
    return 0;
}