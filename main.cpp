#include <iostream>
#include "stack1.hpp"


template<typename T>
constexpr auto max(T a, T b)
{
    return a>b?a:b;
}

template<typename T, typename S>
std::common_type_t<T,S> max(T a, S b)
{
    return a>b?a:b;
}
int main(){
   auto a = max(2,2);     


    
    return 0;
}