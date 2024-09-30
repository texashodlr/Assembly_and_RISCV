#include <stdio.h>

int main(void){

    int f;
    int l;

    printf("How long is your first name?:\n");
    scanf("%d",&f);
    printf("How long is your last name?:\n");
    scanf("%d",&l);

    char first[f];
    char last[l];

    printf("Enter your first name please:\n");
    scanf("%s",first);
    printf("Enter your last name please:\n");
    scanf("%s",last);

    printf("Your name is %s %s !\n",first, last);

    return 0;
}