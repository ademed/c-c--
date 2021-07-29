//this class template codifies the expression template for addition object
#ifndef ADD_HPP
#define ADD_HPP

#include <cstddef>
#include <cassert>
#include "expr_template_traits.hpp"

template<typename T, typename OP1, typename OP2>
struct Add{
public:
    Add(OP1 const& _op1, OP2 const& _op2): op1(_op1), op2(_op2){};
    T operator[](std::size_t idx) const{
        return op1[idx] + op2[idx];
    }
    std::size_t Size() const{ return op1.Size()!= 0 ? op1.Size():op2.Size();}


private:
     A_Traits_t<OP1> op1;
     A_Traits_t<OP2> op2;

};
#endif 