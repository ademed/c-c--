#ifndef ARRAY_HPP
#define ARRAY_HPP

#include <cstddef>
#include <cassert>
#include "Scalar.hpp"
#include "Mult.hpp"
#include "Add.hpp"
#include "MyArray.hpp"

template<typename T, typename Rep = MyArray<T>>
struct Array{
public:
    explicit Array(std::size_t s): obj_rep(s){}
    Array(std::size_t s, T start_val): obj_rep(s, start_val){}
    Array(Rep const& orig): obj_rep(orig){}
    Array(Array const& orig): obj_rep(orig.obj_rep){}
    std::size_t Size() const{return obj_rep.Size();}

    decltype(auto) operator[](std::size_t idx) const{
        assert(idx < Size());
        return obj_rep[idx];
    }

    T& operator[](std::size_t idx){
        assert(idx < Size());
        return obj_rep[idx];
    }

    constexpr Array& operator=(Array const& b){
        assert(Size() == b.Size());
        for (size_t i = 0; i < b.Size(); ++i)
        {
            obj_rep[i] = b[i];
        }
        return *this;
    }

    template<typename T2, typename Rep2>
    constexpr Array& operator=(Array<T2,Rep2> const& b){
        assert(Size() == b.Size());
        for (size_t i = 0; i < b.Size(); ++i)
        {
            obj_rep[i] = b[i];
        }
        return *this;
    } 

    Rep const& rep() const{return obj_rep;}  

    Rep& rep(){return obj_rep;}  

    template<typename U, typename OP1, typename OP2> //vector-vector multiply
    friend Array<U, Add<U, OP1, OP2>> operator+(Array<U, OP1>  const& a, Array<U, OP2>  const& b);
    
    template<typename U, typename OP1, typename OP2> //vector-vector multiply
    friend Array<U, Mult<U, OP1, OP2>> operator*(Array<U, OP1>  const& a, Array<U, OP2>  const& b);

    template<typename U, typename OP2> //scalar-vector multiply
    friend Array<U, Mult<U, Scalar<U>, OP2>> operator*(U const& a, Array<U, OP2>  const& b);

    template<typename U, typename rep>
    friend std::ostream& operator<<(std::ostream& str,Array<U,rep> const& out);
    

private:
    Rep obj_rep; 
};


template<typename U, typename rep>
 std::ostream& operator<<(std::ostream& str,Array<U,rep> const& out){
    for (size_t i = 0; i < out.Size(); i++)
    {
        str << out[i] << '\n';
    }    
    return str;
 }

template<typename U, typename OP1, typename OP2> //vector-vector multiply
Array<U, Add<U, OP1, OP2>> operator+(Array<U, OP1>  const& a, Array<U, OP2>  const& b){
    return Array<U, Add<U, OP1, OP2>>(Add<U,OP1,OP2>(a.rep(),b.rep()));
};


template<typename U, typename OP1, typename OP2> //vector-vector multiply
    Array<U, Mult<U, OP1, OP2>> operator*(Array<U, OP1>  const& a, Array<U, OP2>  const& b){
    return Array<U, Mult<U, OP1, OP2>>(Mult<U,OP1,OP2>(a.rep(),b.rep()));
};

template<typename U, typename OP2> //scalar-vector multiply
Array<U, Mult<U, Scalar<U>, OP2>> operator*(U const& a, Array<U, OP2>  const& b){
    return Array<U, Mult<U, Scalar<U>, OP2>>(Mult<U,Scalar<U>,OP2>(Scalar<U>(a),b.rep()));
};
    
#endif