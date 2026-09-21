U0 Main()
{
    I64 array[10];
    I64 i;
    I64 temp;

    "Enter 10 elements:\n";

    for (i = 0; i < 10; i++)
        array[i] = GetI64();

    for (i = 0; i < 5; i++)
    {
        temp = array[i];
        array[i] = array[9 - i];
        array[9 - i] = temp;
    }

    "Reversed array:\n";

    for (i = 0; i < 10; i++)
        "%d ", array[i];

    "\n";
}

Main();