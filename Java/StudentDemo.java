class Student
{
	String Name;
	int RollNo;
	float Marks;
	Student() 
	{
	}
	Student (String n, int r1, float m1)
	{
		this.Name = n;
		this.RollNo = r1;
		this.Marks = m1; 
	}
}

public class StudentDemo
{
	public static void main(String args[])
	{
	System.out.println("Learning OOP in Java!!");
	Student s1 = new Student("Aditya", 1, 95);
	System.out.println("Name = " +s1.Name);
	System.out.println("Roll No  = " +s1.RollNo);
	System.out.println("Marks = " +s1.Marks);

	System.out.println("---------------------------------------------");

	Student s2 = new Student ("Sakshi", 2, 85);
	System.out.println("Name = " +s2.Name);
	System.out.println("Roll No  = " +s2.RollNo);
	System.out.println("Marks = " +s2.Marks);

	System.out.println("---------------------------------------------");

	Student s3 = new Student ("Rudra", 3, 75);
	System.out.println("Name = " +s3.Name);
	System.out.println("Roll No  = " +s3.RollNo);
	System.out.println("Marks = " +s3.Marks);

	}
}