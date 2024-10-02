#include <stdio.h>
#define PI 3.14159

int main(void){
    float length = 0;

    printf("Howdy! Please input a circle's radius!\n");
    scanf("%f",&length);

    float area = length*length*PI;
    printf("Your circle's area is: %f\n",area);
}