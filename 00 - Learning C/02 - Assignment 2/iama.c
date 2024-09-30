#include <stdio.h>

int main(void){
    int a = 5;
    float b = 5.55;
    char c = '5';
    char string[] = "Howdy Aggies!";

    printf("%d is an integer!\n",a);
    printf("%f is a float!\n",b);
    printf("%c is a char!\n",c);
    printf("%s is a full char array!\n", string);

    return 0;
}