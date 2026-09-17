class ArrayConstructionDemo
{
	public static void main(String[] args)
	{
		System.out.println("Array Construction;");
		int nums[] = new int[3];

		for (int i = 0; i < nums.length; i++)
		{
			System.out.println("Numbers = + nums[i]);
		}
		System.out.println("---------------------------");
		
		nums[0] = 100;
		nums[1] = 1000;
		nums[2] = 10000;

		for (int num: nums)
		{ 
			System.out.println("Numbers = " + num);
		} 
		System.out.println("---------------------------");
		
		char c1[] = new char[3];
		for (int i = 0; i < cl.length; i++)
		{
			System.out.println("Elements = " + c1[i]);
		} 
		System.out.println("---------------------------");

		c1[0] = 'L';
		c1[1] = 'M';
		c1[2] = 'N';

		for (char characters: c1)
		{
			System.out.println("Characters = " + characters);
		}

		System.out.println("------");
		String names[] = new String[3];

		for (int i = 0; i < names.length; i++)
		{
			System.out.println("Elements = " + names[i]);
		}
		System.out.println("---------------------------");
	}
}