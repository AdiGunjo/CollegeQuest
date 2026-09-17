// Assignment 4: OOP

class Employee										// Class Defination
{
	private int EmployeeId;                 					// Instance Variable
	private String EmployeeName;            					// Instance Variable
	private double EmployeeSalary;         						// Instance Variable
	static int count;		        					// Static Class Level Variable

											// Default Constructor
	Employee()
	{count++;}

											// Parameterized Constructor 
	Employee(int id, String n1, double s1)
	{
	this.EmployeeId = id; 
											// Local Variable id is assigned to current instance variable EmployeeId
	this.EmployeeName = n1;
	this.EmployeeSalary = s1;
	count++; 
											// this keyword refers to current object memory 
	}
											// Instance Method Display()
	void display()
											// to Operate on Instance Variables
	{
		System.out.println ("Employee Name = " + this.EmployeeName); 
		System.out.println ("Employee Id = " + this.EmployeeId); 
		System.out.println ("Employee Salary = " + this.EmployeeSalary); 
	}
	static void displayCount()
	{										// Static Method to display Static Variable Count
		System.out.println ("Employee Count = " +count);
	}
}
public class EmployeeDemo
{
	public static void main(String[] args)
	{
		System.out.println("Learning OOP!!!");
		Employee e1 = new Employee();						// Created an Object using Default constructor
		e1.display();								// Calling instance method display() over Object e1

		System.out.println("------------------------------------------");

		System.out.println("Learning OOP!!!");
		Employee e2 = new Employee(1, "Sakshi" , 2000000 );			// Created an Object using Parameterized constructor
		e2.display();								// Calling instance method display() over Object e2

		System.out.println("------------------------------------------");

	}

}
