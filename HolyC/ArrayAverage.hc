U0 Main()
{
    I64 array[10];
    I64 sum;
    F64 average;
    I64 i;

    sum = 0;

    "Enter 10 elements:\n";

    for (i = 0; i < 10; i++)
    {
        array[i] = GetI64();
        sum += array[i];
    }

    average = sum / 10.0;

    "Sum = %d\n", sum;
    "Average = %f\n", average;
}

Main();