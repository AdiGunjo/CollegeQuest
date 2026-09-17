Class ArrayDemo2
{
	public static void main (String[] args}
	{
		int nums[] = {10,20,30,40,50};
		int sum = 0

		for(int n1 : num)
		{
			System.out.println("Numbers = " + n1);
		}
		System.out.println("-----------------------------------");

		String fruits[] = {"Apple", "Strawberry", "Mango", "Grapes"}

		for(String fruit : fruits)
		{
			System.out.println("Fruits = " +  fruit );
		}
		System.out.println("-----------------------------------");

		for( int i = 0; i<nums.length ; i++)
		{
			System.out.println("Numbers = " + nums[i]);
			sum = sum + nums[i];
		}
		System.out.println("Total = " + sum);

	}
}