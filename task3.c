//Write a program to get the difference between a given number and 23, if the number is greater than 23 return double the absolute difference.

#include <stdio.h>

int main() {
    int x;
    printf("Enter number: ");
    scanf("%d",&x);
    int sum = abs(x-23);
    if(x > 23){
        printf("%d",sum*2);
    }else{
        printf("The number is lower than 23");
    }

    return 0;
}