/*


Prompt the user for a number of seconds. 
Take the user's input and convert the number of seconds into its duration in:
     Hours, Minutes, and remaining Seconds

*/

#include <stdio.h>

int main (void){

    int seconds = 0;

    printf("Brother! How many seconds do you've got?\n");
    scanf("%d",&seconds);

    int hours = seconds/3600;
    int minutes = (seconds%3600)/60;
    int secs = ((seconds%3600)%60);

    printf("That converts to %d hours, %d minutes and %d seconds!\n",hours, minutes, secs);
    return 0;
}