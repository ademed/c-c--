#ifndef SCALAR_HPP
#define SCALAR_HPP

#include <cstddef>
#include <cassert>

template<typename T>
struct Scalar{
public:
    constexpr Scalar(T const& _val): val(_val){};
    constexpr T const& operator[](std::size_t idx) const{
        return val;
    }
    constexpr std::size_t Size() const{return 0;}
private:
    T const& val;
};

#endif