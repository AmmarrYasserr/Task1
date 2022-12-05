#Write a program which accepts the radius of a circle from the user and compute the area.


#include <stdio.h>

int main() {
    float r,area,pi=3.14;
    printf("Enter the radius of the circle:");
    scanf("%f" ,&r);
    area = pi*r*r;
    printf("the area of the circle is %f\n",area);
    return 0;
}


