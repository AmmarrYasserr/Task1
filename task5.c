//Write a program to print prime numbers from 1 to 100.

#include <stdio.h>
 
int main()
{
  int i, j, count;
  for(i = 1; i <= 100; i++)
  {
    count = 0;
    for (j = 2; j <= i/2; j++)
    {
  	if(i % j == 0){
      count++;
  	  break;
	}
    }
    if(count == 0 && i != 1 ){
	printf("%d\n", i);
    }  
  }
  return 0;
}