#include <stdio.h>

int main(){

    double a[4] = {1,2,3,4};
    double b[4] = {1,2,3,4};
    double c[4] = {0};  
    for (size_t i = 0; i < 4; i++)
    {
       c[i] = a[i] + b[i];       
    }
    
    return 0;
}