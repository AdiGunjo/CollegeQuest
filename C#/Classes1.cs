using System;
class Rectangle {
    public double Width, Height;
    public Rectangle(double w, double h) { Width = w; Height = h; }
    public double Area() => Width * Height;
}
class Program {
    static void Main() {
        Rectangle r = new Rectangle(4, 5);
        Console.WriteLine("Area = " + r.Area());
    }
}