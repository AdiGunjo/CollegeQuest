class ArrayDemo1
{
	public static void main (String[] args)
	{
		int nums[] = {10,20,30,40,50};
		String fruits[] = {"Apple", "Strawberry", "Mango", "Grapes"}

		System.out.println("First Element = " + nums[0]);
		System.out.println("Last Element = " + fruits[2];

		for(int i = 0; i<5 ; i++)
		{
			System.out.println("Elements = " + nums[i]);
		}
		System.out.println("-----------------------------------");

		for(int i = 4; i>0 ; i--)
		{
			System.out.println("Elements = " + nums[i]);
		}

	}
}