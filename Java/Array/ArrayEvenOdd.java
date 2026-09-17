import java.util.Scanner;

public class EvenOddCount
{
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the size of the array: ");
        int size = scanner.nextInt();

        int[] arr = new int[size];
        int evenCount = 0, oddCount = 0;

        System.out.println("Enter " + size + " integers:");
        for (int i = 0; i < arr.length; i++)
        {
            System.out.print("Element at index " + i + ": ");
            arr[i] = scanner.nextInt();

            if (arr[i] % 2 == 0)
                evenCount++;
            else
                oddCount++;
        }

        System.out.println("\nEven numbers: " + evenCount);
        System.out.println("Odd numbers: " + oddCount);

        scanner.close();
    }
}