#include <iostream>

int main(){

    double a[10000] = {1,2,3,4};
    double b[10000] = {1,2,3,4};
    double c[10000] {0};
    for (size_t i = 0; i < 10000; i++)
    {
       c[i] = a[i] + b[i];
    }
    
    return 0;
}