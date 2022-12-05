//Write a program which accepts the radius of a circle from the user and compute the area.

#include<stdio.h>  
 
 int main() {  
    float r, area,  pi = 3.14;  
    printf("Enter the radius of circle: ");  
    scanf("%f",&r);   
    area = pi*r*r;   
    printf("The area of the circle: %f",area);  
      
   return 0;   
} 