U0 Main()
{
    I64 number;
    I64 original;
    I64 digit;
    I64 sum;

    "Enter a number: ";
    number = GetI64();

    original = number;
    sum = 0;

    while (number > 0)
    {
        digit = number % 10;
        sum += digit * digit * digit;
        number /= 10;
    }

    if (sum == original)
        "%d is an Armstrong number.\n", original;
    else
        "%d is not an Armstrong number.\n", original;
}

Main();