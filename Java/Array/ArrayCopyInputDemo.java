import java.util.Scanner;

public class ArrayCopyInputDemo
{
	public static void main(String[] args) 
	{
        	Scanner scanner = new Scanner(System.in);

        	System.out.print("Enter the size of the array: ");
        	int size = scanner.nextInt();

        	int[] array1 = new int[size];

        	System.out.println("Enter " + size + " integers:");
        	for (int i = 0; i < array1.length; i++) 
		{
           		System.out.print("Element at index " + i + ": ");
            		array1[i] = scanner.nextInt();
        	}

        	System.out.println("\nYou entered the following array elements:");
        	for (int num : array1) {
            	System.out.print(num + " ");
		}

		int array2[] = new int [5];

		for(int i = 0 ; i < array1.length; i++)
		{
			array2[i] = array1[i];

		}
		System.out.println(": Original Array");

			for (int i = 0; i < array1.length ; i++)
			{
			System.out.println(array1[i]);
			}

			System.out.println("Array 2 =" );

			for (int n: array2)
			{
			System.out.println(n);
			}

	scanner.close();
	}
}

