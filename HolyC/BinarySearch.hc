U0 Main()
{
    I64 array[10];
    I64 target;
    I64 left;
    I64 right;
    I64 middle;
    Bool found;

    "Enter 10 sorted elements:\n";

    for (I64 i = 0; i < 10; i++)
        array[i] = GetI64();

    "Enter target: ";
    target = GetI64();

    left = 0;
    right = 9;
    found = FALSE;

    while (left <= right)
    {
        middle = (left + right) / 2;

        if (array[middle] == target)
        {
            found = TRUE;
            break;
        }
        else if (array[middle] < target)
            left = middle + 1;
        else
            right = middle - 1;
    }

    if (found)
        "Found at index %d.\n", middle;
    else
        "Target not found.\n";
}

Main();