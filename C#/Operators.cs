using System;
class Complex {
    public double Real, Imag;
    public Complex(double r, double i) { Real = r; Imag = i; }
    public static Complex operator +(Complex a, Complex b) =>
        new Complex(a.Real + b.Real, a.Imag + b.Imag);
    public override string ToString() => $"{Real} + {Imag}i";
}
class Program {
    static void Main() {
        Complex c1 = new Complex(2, 3), c2 = new Complex(1, 4);
        Console.WriteLine(c1 + c2);
    }
}