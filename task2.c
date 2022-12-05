//Write a program to calculate the sum of three given numbers.

#include <stdio.h>

int main() {
    float x,y,z;
    printf("Enter first number: ");
    scanf("%f",&x);
    printf("Enter second number: ");
    scanf("%f",&y);
    printf("Enter third number: ");
    scanf("%f",&z);
    
    float sum = x + y + z;
    
    printf("The sum of numbers: %f",sum);

    return 0;
}