import java.util.*;
class PalindromeDemo
{
	public static void main(String args[])
	{
        System.out.println("Keyboard Input");
	Scanner SC = new Scanner(System.in);

	System.out.println("Enter your Name = ");
        String name = SC.nextLine();
        System.out.println("Name = " + name);

	StringBuffer sb1 = new StringBuffer(name);

	String reverseString = sb1.reverse().toString();
	
		if (name.equals(reverseString))
		{
			System.out.println("Entered String is a Palindrome");
		}
		else 
		{
			System.out.println("Entered String is not a Palindrome");
		}

	SC.close();
	}
}

