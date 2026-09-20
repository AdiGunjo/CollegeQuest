using System;
class Base {
    public Base() => Console.WriteLine("Base constructor");
}
class Derived : Base {
    public Derived() => Console.WriteLine("Derived constructor");
}
class Program {
    static void Main() {
        Derived d = new Derived();
    }
}