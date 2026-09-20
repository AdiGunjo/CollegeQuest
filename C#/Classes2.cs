using System;
class Counter {
    private int count = 0;
    public void Increment() => count++;
    public int Get() => count;
}
class Program {
    static void Main() {
        Counter c = new Counter();
        c.Increment(); c.Increment(); c.Increment();
        Console.WriteLine("Count = " + c.Get());
    }
}