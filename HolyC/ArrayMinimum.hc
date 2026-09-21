U0 Main()
{
    I64 array[10];
    I64 minimum;
    I64 i;

    "Enter 10 elements:\n";

    for (i = 0; i < 10; i++)
        array[i] = GetI64();

    minimum = array[0];

    for (i = 1; i < 10; i++)
    {
        if (array[i] < minimum)
            minimum = array[i];
    }

    "Minimum = %d\n", minimum;
}

Main();