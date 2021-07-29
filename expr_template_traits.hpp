#ifndef EXPR_TEMPLATE_TRAITS_HPP
#define EXPR_TEMPLATE_TRAITS_HPP

template<typename T> struct Scalar; //forward declaration

template<typename T>
struct A_Traits{
    using type = T const&;
};

template<typename T>
struct A_Traits<Scalar<T>>{
    using type = Scalar<T>;
};

template<typename T> //alias template
using A_Traits_t = typename A_Traits<T>::type;


#endif