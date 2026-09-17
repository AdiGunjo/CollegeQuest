import java.util.*;

public class ArrayCopyDemo
{
	public static void main (String[] args)
	{
		int array1[] = {2,3,4,8,9};

		int array2[] = new int [5];

		for(int i = 0 ; i < array1.length; i++)
		{
			array2[i] = array1[i];

		}
		System.out.println("Original Array");

			for (int i = 0; i < array1.length ; i++)
			{
			System.out.println(array1[i]);
			}

			System.out.println("Array 2 =" );

			for (int n: array2)
			{
			System.out.println(n);
			}
			
	}
}
		
