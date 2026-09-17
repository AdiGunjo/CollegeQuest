#include <stdio.h>
int main() {
    int n, original, reversed = 0;
    printf("Enter a number: ");
    scanf("%d", &n);
    original = n;
    while (n != 0) {
        reversed = reversed * 10 + n % 10;
        n /= 10;
    }
    printf(original == reversed ? "Palindrome\n" : "Not Palindrome\n");
    return 0;
}