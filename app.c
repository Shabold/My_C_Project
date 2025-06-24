//mingw32-make    компиляция
#include <stdio.h>
#include <conio.h>
//#include "utils.h"


int main(){

    int n = 0;
    int digit_before = 0, digit_after = 0;
    unsigned char flag = 0;

    scanf("%d", &n);
    scanf("%d", &digit_before);
    scanf("%d", &digit_after);
    --n;
    while(n != 1){
        if(digit_before >= digit_after){
            flag = 1;
        }
        digit_before = digit_after;
        scanf("%d", &digit_after);
        --n;
    }
    
    if(digit_before >= digit_after){
            flag = 1;
        }

    if(flag == 0) printf("True");
    else printf("False");

    getch();
    return 0;
}