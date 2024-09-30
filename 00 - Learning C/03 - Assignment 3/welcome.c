#include <stdio.h>

int main(void){

    char first[10];
    char last[10];

    printf("Enter your first name please:\n");
    scanf("%10s",first);
    printf("Enter your last name please:\n");
    scanf("%10s",last);

    printf("Your name is %s %s !\n",first, last);

    return 0;
}