#include <stdio.h>
#include <math.h>
int main() {
    float data[] = {2, 4, 4, 4, 5, 5, 7, 9};
    int n = 8;
    float sum = 0, mean, variance = 0;
    for (int i = 0; i < n; i++) sum += data[i];
    mean = sum / n;
    for (int i = 0; i < n; i++) variance += pow(data[i] - mean, 2);
    variance /= n;
    printf("Standard Deviation = %.2f\n", sqrt(variance));
    return 0;
}