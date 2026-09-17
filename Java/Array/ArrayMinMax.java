import java.util.Scanner;

public class ArrayMaxMin
{
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the size of the array: ");
        int size = scanner.nextInt();

        int[] arr = new int[size];

        System.out.println("Enter " + size + " integers:");
        for (int i = 0; i < arr.length; i++)
        {
            System.out.print("Element at index " + i + ": ");
            arr[i] = scanner.nextInt();
        }

        int max = arr[0];
        int min = arr[0];

        for (int num : arr)
        {
            if (num > max) max = num;
            if (num < min) min = num;
        }

        System.out.println("\nMaximum = " + max);
        System.out.println("Minimum = " + min);

        scanner.close();
    }
}