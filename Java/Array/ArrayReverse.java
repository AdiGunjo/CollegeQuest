import java.util.Scanner;

public class ArrayReverse
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

        int[] reversed = new int[size];
        for (int i = 0; i < size; i++)
        {
            reversed[i] = arr[size - 1 - i];
        }

        System.out.println("\nOriginal Array:");
        for (int n : arr) System.out.print(n + " ");

        System.out.println("\nReversed Array:");
        for (int n : reversed) System.out.print(n + " ");

        scanner.close();
    }
}