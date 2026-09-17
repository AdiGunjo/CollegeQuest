U0 Main()
{
    I64 array[10];
    I64 maximum;
    I64 i;

    "Enter 10 elements:\n";

    for (i = 0; i < 10; i++)
        array[i] = GetI64();

    maximum = array[0];

    for (i = 1; i < 10; i++)
    {
        if (array[i] > maximum)
            maximum = array[i];
    }

    "Maximum = %d\n", maximum;
}

Main();