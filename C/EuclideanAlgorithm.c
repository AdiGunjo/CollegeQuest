#include <stdio.h>
int main() {
    int a, b;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    while (b != 0) {
        int t = b;
        b = a % b;
        a = t;
    }
    printf("GCD = %d\n", a);
    return 0;
}