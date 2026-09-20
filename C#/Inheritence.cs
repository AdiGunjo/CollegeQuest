using System;
interface IPrintable { void Print(); }
interface IScannable { void Scan(); }
class Printer : IPrintable, IScannable {
    public void Print() => Console.WriteLine("Printing...");
    public void Scan() => Console.WriteLine("Scanning...");
}
class Program {
    static void Main() {
        Printer p = new Printer();
        p.Print(); p.Scan();
    }
}