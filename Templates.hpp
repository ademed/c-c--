
#pragma once

#include <iostream>
#include <functional>

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

template<typename T> //variable template
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



template<typename iter, typename callable, typename... Arg>
void foreach(iter start, iter end, callable&& op, Arg&&... arg){
    while(start!=end)
    {
        //op(*start, arg...);
      // std::invoke(op,*start, arg...);
        std::invoke(std::forward<callable>(op), std::forward<Arg>(arg)..., *start);
        ++start;
    }
}


template<typename T, typename S>
auto returnSum = [](T a, S b) -> std::common_type_t<T,S> {return a + b;}; //lambda expression template: [] is called Lambda Introducer

class FuncObj{
    public:
        void operator() (int i){
            std::cout << i << std::endl;
        } 
        void MemberFunc(std::string const& str, int i) const{  //used in calling a member function in a function template that takes a functor as an argument
            std::cout << str <<  i << std::endl;
        }
        auto operator& (){ //overloaded & operator may require the use of std::addressof() to get the address of the object
            return this;
        }


};


template<unsigned... T>
unsigned mySum(){
    return (T + ...);
}


template<typename T = int>
unsigned mySum2(){
    return sizeof(T);
}
struct myClass{ myClass() = default;};

template<typename T1, typename T2>
auto myAdd(){
    std::cout << "adding..." << std::endl;
}



//***********************************//
//********IMPLEMENTING TRAITS********//
//***********************************//
template<typename T>
struct AccumTraits{
    using result_type = T;
    static constexpr T init{};

};

template<> 
struct AccumTraits<char>{
    using result_type = int;
    static constexpr int init = 0;

};



template<typename T>
auto accum(T* beg, T* end){
    typename AccumTraits<T>::result_type  res = AccumTraits<T>::init;
    while(beg != end){
        res = res + *beg;
        ++beg;
    }
    return res;
}

struct SumPolicy{
    template<typename T>
    static void accumulate(T& res, T* beg, T* end){
        res = 0;
        while(beg!=end)
        {
          res += *beg;
          ++beg;
        }
   
    }
};
template<typename T>
struct SumPolicy_template{
    static void accumulate(T& res, T* beg, T* end){
        res = 0;
        while(beg!=end)
        {
          res += *beg;
          ++beg;
        }
   
    }
};
struct MultPolicy{
    template<typename T>
    static void accumulate(T& res, T* beg, T* end){
        res = 1;
        while(beg!=end)
        {
          res *= *beg;
          ++beg;
        }
   
    }
};
template<typename T>
struct MultPolicy_template{
    constexpr static void accumulate(T& res, T* beg, T* end){
        res = 1;
        while(beg!=end)
        {
          res *= *beg;
          ++beg;
        }
   
    }
};
template<typename T, template<typename> class Policy = SumPolicy_template, typename accum_traits = AccumTraits<T>> //using sumpolicy as default accumulation policy and using parameterized traits (accum_traits)
auto accum_policy(T* beg, T* end){
    typename accum_traits::result_type res;
    Policy<T>::accumulate(res,beg,end);
    return res;
}
template<typename T, typename Policy = SumPolicy, typename accum_traits = AccumTraits<T>> //using sumpolicy as default accumulation policy and using parameterized traits (accum_traits)
auto accum_policy(T* beg, T* end){
    typename accum_traits::result_type res;
    Policy::accumulate(res,beg,end);
    return res;
}


template <typename T>
struct ElementT{
    using type = typename T::value_type;
};

template <typename T>
struct ElementT<std::vector<T>>{
    using type = T;
};

template<typename T> //alias template
using ElementT_t = typename ElementT<T>::type;


//transforming traits: one of the numerous uses of trait classes
template<typename T>
struct RemoveReference{
    using type = T;
};

template<typename T>
struct RemoveReference<T&>{
    using type = T;
};

template<typename T>
struct RemoveReference<T&&>{
    using type = T;
};

template<typename T>
struct AddRReference{
    using type = T&&;
};
template<>
struct AddRReference<void>{
    using type = void;
};
template<>
struct AddRReference<void const>{
    using type = void const;
};
template<>
struct AddRReference<void volatile>{
    using type = void volatile;
};
template<typename T>
using AddRReference_t = typename AddRReference<T>::type;



template<typename T>
struct AddLReference{
    using type = T&;
};
template<>
struct AddLReference<void>{
    using type = void;
};
template<>
struct AddLReference<void const>{
    using type = void const;
};
template<>
struct AddLReference<void volatile>{
    using type = void volatile;
};
template<typename T>
using AddLReference_t = typename AddLReference<T>::type;

template <typename T>
struct Addref:AddLReference<T>, AddRReference<T>{}; 



template<class T, class S>
struct isSame:std::false_type{}; //metafunction forwarding forwards all member function/types in std::false_type to isSame

template<class T>
struct isSame<T,T>:std::true_type{};

template<class T, class S>
constexpr bool isSame_v = isSame<T,S>::value;


//Implementing SFINAE based traits/// 
//----first by function overload
template<typename T>
struct is_default_constructible{
    private:
        template <typename U, typename = decltype(U())>
        static int test(void*);
        template <typename U>
        static long test(...);
    public:
    static constexpr bool value = isSame_v<decltype(test<T>(nullptr)), int>;
};

//---second by partial specialization

template <typename T, typename = std::void_t<>>
struct is_default_constructible2:std::false_type{};
template<typename T>
struct is_default_constructible2<T, std::void_t<decltype(T())>>: std::true_type{};


template<typename, typename = std::void_t<>>
struct HasType  : std::false_type{}; 
template<typename T> 
struct HasType<T, std::void_t<typename T::value_type, typename T::difference_type, decltype(std::declval<T>().begin())> >: std::true_type{}; //checks if type has value_type and difference_type members




/////******METAPROGRAMMING********//////
template<typename T, std::size_t N>
struct DotProductT{
    using value_type = T;
    using const_p = const T*;
    static inline  value_type result( const_p  a,   const_p  b){
        return *a * *b + DotProductT<value_type, N-1>::result(a+1,b+1);
    }
};

template<typename T>
struct DotProductT<T, 0>{
    using value_type = T;
    using const_p = const T*;
    static inline  value_type result( const_p  a,   const_p  b){
        return  value_type{};
    }
};

template<typename T, std::size_t N>
ElementT_t<T> dotproduct(T const& a, T const& b){
return DotProductT<ElementT_t<T>, N>::result(a.begin(), b.begin()); 
}






}
