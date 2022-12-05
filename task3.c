#include <stdio.h>

int main() {
    int x;
    printf("Enter number: ");
    scanf("%d",&x);
    int sum = abs(x-23);
    if(x > 23){
        printf("%d",sum*2);
    }else
    {
        printf("The number is lower than 23");
    }

    return 0;
}