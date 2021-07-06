
#pragma once

#include <iostream>

namespace Template{

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
template <typename T, typename S>
using stackpair =  Stack<std::pair<T, S>> ; //alias template

int addValue(){
    return 0;
}

template<typename... T>
auto addValue(T... m){
    std::cout<< sizeof...(m) << std::endl;
    std::cout<< sizeof...(T) << std::endl;
    return (... + m);
}


template<typename T>
struct Addspace{
    private:
        T const& ref;
    public:
        Addspace(T const& _ref): ref(_ref){}

    friend std::ostream& operator<< (std::ostream& ostrm, const Addspace& inp ){
        return ostrm << inp.ref << ' ' ; 
    }
};

template<typename... T>
void print(T const&... m){
    (std::cout << ... << Addspace(m)) <<'\n'; //using fold expessions: unpacking variadic arguments when applying a binary operator
}
template<typename... T>
void printdoubled(T const&... m){
    print(m+m...);  
}

template<auto... idx,typename T>
void printVec(const T& vec){
    print(vec[idx]...); //variadic indices
}
struct something{
    int x, y;
   // something() = default;
    something(int _x){std::cout<< "int contructor" <<std::endl;}
    something(const char& ptr){std::cout << "pointer constructor" << std::endl;}
};

template<unsigned long N>
void printBitset(std::bitset<N> const& bs){
    std::cout << bs.template to_string<char, std::char_traits<char>, std::allocator<char>>(); 
    //using .template construct to qualify a template argument that has a template member function
    //if this is not done, the compiler sees the beginning of the template parameters (<) for "to_string" as an error
    //This is only necessary when we require a template member function of a template argument that depends on one/more of the parameeters in a function template.
    
};

}
