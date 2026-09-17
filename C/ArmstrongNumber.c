#include <stdio.h>
#include <math.h>
int main() {
    int n, original, remainder, digits = 0;
    double result = 0;
    printf("Enter a number: ");
    scanf("%d", &n);
    original = n;
    for (int t = n; t != 0; digits++) t /= 10;
    for (int t = n; t != 0; t /= 10) {
        remainder = t % 10;
        result += pow(remainder, digits);
    }
    printf((int)result == original ? "Armstrong\n" : "Not Armstrong\n");
    return 0;
}