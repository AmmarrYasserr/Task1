//Write a program to find whether a given number (accept from the user) is even or odd.

#include <stdio.h>

int main() {
    int x;
    printf("Enter number: ");
    scanf("%d",&x);
    
    if(x % 2 == 0){
        printf("EVEN");
    }else{
        printf("ODD");
    }

    return 0;
}