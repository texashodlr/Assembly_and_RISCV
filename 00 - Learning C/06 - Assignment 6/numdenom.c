/*
Prompt the user for a Numerator (top number of a fraction) and a 
Denominator (bottom number of a fraction).
Tell the user whether or not there is a remainder using if control flow.
*/
#include <stdio.h>

int main(void){

    int n=0;
    int de=0;
    printf("I'm going to ask you for a numerator and a denominator, are you ready?\n");
    printf("Give me a numerator: \n");
    scanf("%d",&n);
    printf("Now give me a denominator: \n");
    scanf("%d",&de);

    int r= n%de;

    if(r==0){
        printf("Great job brother no remainders!\n");
    }
    else{
        printf("Thats a bit of a whoopsie, you've got %d leftover.\n",r);
    }

    return 0;

}