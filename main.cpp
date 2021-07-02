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
   Stack<std::pair<int, double>> a;
   a.push({2,3.4}); a.push({4,3.5});    
        
    
   std::cout << a << std::endl;


    
    return 0;
}