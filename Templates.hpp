
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

template<typename T>
 T pi{3.1415926535897932385};

void printPi(){
    std::cout << pi<float> << std::endl;
}

void g(std::string&& str)
{
    std::cout << "rvalue ref g function called" << std::endl;
    std::cout << str << std::endl;
}
void g(const std::string& str)
{
    std::cout << "lvalue ref g function called" << std::endl;
    std::cout << str << std::endl;
}
// void f(std::string&& str)
// {
//     g(std::move(str));
// }
template<typename T>
void f(T&& str){
    g(std::forward<T>(str)); //perfect forwarding-forwards inputs as is: lvalue, rvalue, xvalues, prvalues etc
}

 template<class T, typename = std::enable_if_t<!std::is_const_v<T>>> //defined so that no constant is allowed - ***precompilation check
void PrintV(T&  arg) // non-constant lvalue reference
{
    //static_assert(!std::is_const_v<T>, "no constants allowed here, BITCH");  ****runtime check
    std::cout << arg << std::endl; 
    if constexpr (std::is_lvalue_reference_v<decltype((arg))>){
        std::cout << "expression is lvalue\n";
    }
    else if constexpr(std::is_rvalue_reference_v<decltype((arg))>){
         std::cout << "expression is xvalue\n";
    }
    else {
         std::cout << "expression is rvalue\n";
    }
}

////-------used this section to test std::cref and std::ref. argument are passed in using this reference wrappers. results were remarkable for nontrivial objects 
 void PrintString(std::vector<double> const& arg){ }//std::cout << arg << std::endl;}
 template<typename T>
 void PrintT(T arg){
     PrintString(arg);
 }




 /////-----------First template metaprogram------------////   
 template<unsigned p, unsigned d>
 struct DoIsPrime{
     static constexpr bool value = (p%2 != 0) && DoIsPrime<p,d-1>::value; 
 };

 template<unsigned p> //specialization to terminate recursion at d = 2
 struct DoIsPrime<p,2>{
     static constexpr bool value = (p%2 != 0);
 };

template<unsigned p>
struct IsPrime{
    static constexpr bool value = DoIsPrime<p,p/2>::value;
};
template<unsigned p>
static constexpr bool IsPrime_v = IsPrime<p>::value;

//full template specialization for 0,1,2 and 3
template<>
struct IsPrime<0>{
     static constexpr bool value = false;
};
template<>
struct IsPrime<1>{
     static constexpr bool value = false;
};
template<>
struct IsPrime<2>{
     static constexpr bool value = true;
};
template<>
struct IsPrime<3>{
     static constexpr bool value = true;
};



///----Factorial at compile time
template<unsigned long long  val>
struct Factorial{
    static const unsigned  long long int value =  val * Factorial<val-1>::value;
};

template<>
struct Factorial<1>{
     static const unsigned long long int value =  1;
};


///-----Testing the Substitution Failure is Not An Error (SFINAE) rule
template<typename T, size_t N>
[[nodiscard]] size_t len(T(&)[N]){
    return N;
}

template<typename T>
typename T::size_type len(T const& arr){
    return arr.size();
}



}
