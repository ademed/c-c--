#ifndef ARRAY_HPP
#define ARRAY_HPP

#include <cassert>
#include <type_traits>

template<typename T>
struct MyArray {
public:
    MyArray(std::size_t  sz):begin(new T[sz]), size(sz){init();}; //constructor
    MyArray(std::size_t sz, T initial_value):begin(new T[sz]), size(sz){init(initial_value);};
    MyArray(MyArray const& orig): begin(new T[orig.size]), size(orig.size){copy(orig);}; //copy constructor
    ~MyArray(){
        delete[] begin;
    }
    T& operator[](std::size_t i) const{
        return *(begin + i);
    }
    template<typename U>
    friend std::ostream& operator<<(std::ostream& str,MyArray<U> const& out);
    constexpr T Size() const{return this->size;}
    template<typename U>
    MyArray<U> operator*(MyArray<U> const& b);
    template<typename U>
    MyArray<U> operator+(MyArray<U> const& b);
    template<typename U, typename S>
    friend MyArray<U> operator*(S const& a,MyArray<U> const& b); //declaring this operator friend makes it possible to do cummutative multiplication with constants
    template<typename U, typename S>
    friend MyArray<U> operator*(MyArray<U> const& b, S const& a);
 
     static constexpr bool is_equal(std::size_t m, std::size_t n){
        bool value = m==n;
        return value;
    };
    
protected:
    void copy(MyArray const& orig){
        assert(is_equal(Size(),orig.Size()));
        for (size_t i = 0; i < orig.size; i++)
        {
            this->begin[i] = orig[i];
        }       
    }   
    void init(){
        for (size_t i = 0; i < this->size; i++)
        {
            this->begin[i] = T();
        }
        
    } 
    void init(T initial_value){
        for (size_t i = 0; i < this->size; i++)
        {
            this->begin[i] = initial_value;
        }
        
    } 
private:
    T* begin;
    std::size_t size;
};

template<typename U>
std::ostream& operator<<(std::ostream& str, MyArray<U> const& out){
    for (size_t i = 0; i < out.Size(); i++)
    {
        str << out[i] << '\n';
    }    
   return str;
}
template<typename T>
    template<typename U>
MyArray<U> MyArray<T>::operator*(MyArray<U> const& b){
    assert(is_equal(Size(),b.Size()));
    MyArray<U> result(b.Size());
    for (size_t i = 0; i < b.Size(); i++)
    {
        result[i] = this->begin[i]*b[i];
    }
    return result;
}
template<typename T>
    template<typename U>
MyArray<U> MyArray<T>::operator+(MyArray<U> const& b){
     assert(is_equal(Size(),b.Size()));
    MyArray<U> result(b.Size());
    for (size_t i = 0; i < b.Size(); i++)
    {
        result[i] = this->begin[i] + b[i];
    }
    return result;
}
template<typename T, typename S>
MyArray<T> operator*(S const& a,MyArray<T> const& b){
    MyArray<T> result(b.Size());
    for (size_t i = 0; i < b.Size(); i++)
    {
        result[i] = b[i]*a;
    }
    return result;
}
template<typename T, typename S>
MyArray<T> operator*(MyArray<T> const& b, S const& a){
    MyArray<T> result(b.Size());
    for (size_t i = 0; i < b.Size(); i++)
    {
        result[i] = b[i]*a;
    }
    return result;
}





#endif