using System;
using System.Collections.Generic;

class Program
{
    static void Main() {
        List<int> list = new List<int> { 5, 3, 8, 1, 9 };
        list.Add(20);

        Console.WriteLine("After adding 20:");
        foreach (int x in list)
            Console.Write(x + " ");

        Console.WriteLine();

        list.Sort();

        Console.WriteLine("After sorting:");
        foreach (int x in list)
            Console.Write(x + " ");

        Console.WriteLine();
    }
}

