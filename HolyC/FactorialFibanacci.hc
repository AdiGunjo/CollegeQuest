U0 Main() {
    I64 n = 5, fact = 1, i;
    for (i = 1; i <= n; i++)
        fact *= i;
    Print("Factorial = %d\n", fact);
}
Main;

U0 Main2() {
    I64 a = 0, b = 1, next, i;
    for (i = 0; i < 10; i++) {
        Print("%d ", a);
        next = a + b;
        a = b;
        b = next;
    }
    Print("\n");
}
Main2;

