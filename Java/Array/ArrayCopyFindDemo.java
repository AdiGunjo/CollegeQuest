import java.util.Scanner;

public class ArrayCommonElements
{
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter size of first array: ");
        int size1 = scanner.nextInt();
        int[] array1 = new int[size1];

        System.out.println("Enter " + size1 + " integers:");
        for (int i = 0; i < size1; i++)
        {
            System.out.print("Element at index " + i + ": ");
            array1[i] = scanner.nextInt();
        }

        System.out.print("Enter size of second array: ");
        int size2 = scanner.nextInt();
        int[] array2 = new int[size2];

        System.out.println("Enter " + size2 + " integers:");
        for (int i = 0; i < size2; i++)
        {
            System.out.print("Element at index " + i + ": ");
            array2[i] = scanner.nextInt();
        }

        System.out.println("\nCommon elements:");
        for (int i = 0; i < size1; i++)
        {
            for (int j = 0; j < size2; j++)
            {
                if (array1[i] == array2[j])
                {
                    System.out.println(array1[i]);
                }
            }
        }

        scanner.close();
    }
}