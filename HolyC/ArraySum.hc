U0 Main()
{
    I64 array[10];
    I64 sum;
    I64 i;

    sum = 0;

    "Enter 10 elements:\n";

    for (i = 0; i < 10; i++)
        array[i] = GetI64();

    for (i = 0; i < 10; i++)
        sum += array[i];

    "Array sum = %d\n", sum;
}

Main();