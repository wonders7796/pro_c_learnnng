#include<stdio.h>
#include"func.h"

int main()
{
	int temp = 0;
	
	printf("Please input your num:");
	scanf("%d", &temp);
	
	(void)func(temp);
	
	return 0;
}
