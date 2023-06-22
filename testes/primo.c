int n;
while (true)
{
	scanf("%i", &n);
	if (n == -1)
	{
		break
	}
	int nd = 0;
	if (n % 2 == 1)
	{
		nd++;
	}
	
	for (int i = 3; i < (n / 2); i += 2)
	{
		if (n % i == 0)
		{
			nd++;
		}
		if (nd > 2)
		{
			break;
		}
	}

	if (nd == 0)
	{
		printf("1\n");
	}
	else
	{
		printf("0\b");
	}
}
