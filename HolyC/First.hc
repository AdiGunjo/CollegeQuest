U0 Main() {
    I64 n = 7;
    if (n % 2 == 0)
        Print("Even\n");
    else
        Print("Odd\n");
}
Main;


U0 Main2() {
    I64 i;
    for (i = 1; i <= 5; i++)
        Print("%d ", i);
    Print("\n");
}
Main2;


U0 Main3() {
    I64 i = 0;
    while (i < 5) {
        Print("%d ", i);
        i++;
    }
    Print("\n");
}
Main3;


U0 Main4() {
    I64 n = 5, fact = 1, i;
    for (i = 1; i <= n; i++)
        fact *= i;
    Print("Factorial = %d\n", fact);
}
Main4;

