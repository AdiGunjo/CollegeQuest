using System;
class Animal {
    public virtual void Speak() => Console.WriteLine("Some sound");
}
class Dog : Animal {
    public override void Speak() => Console.WriteLine("Woof!");
}
class Program {
    static void Main() {
        Animal a = new Dog();
        a.Speak();
    }
}