
#define MAX_SIZE 20

U0 Main()
{
    I64 array[MAX_SIZE];
    I64 size;
    I64 i;

    "Enter array size: ";
    size = GetI64();

    if (size > MAX_SIZE)
        size = MAX_SIZE;

    for (i = 0; i < size; i++)
    {
        "Element %d: ", i;
        array[i] = GetI64();
    }

    "Array:\n";

    for (i = 0; i < size; i++)
        "%d ", array[i];

    "\n";
}

Main();