import java.util.*;
class UserInputDemo
{
    public static void main(String args[])
    {
        System.out.println("Keyboard Input");
	Scanner SC = new Scanner(System.in);

        System.out.println("Enter your Name = ");
        String name = SC.nextLine();
        System.out.println("Name = " + name);

        System.out.println("Enter your Age = ");
        int age = SC.nextInt();
        System.out.println("Age = " + age);

        System.out.println("Enter your Salary = ");
        float sal = SC.nextFloat();
        System.out.println("Salary = " + sal);

        SC.close();
    }
}
