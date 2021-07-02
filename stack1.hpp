//#pragma once
#ifndef STACK1_HPP
#define STACK1_HPP

#include <vector>
#include <cassert>

template<typename T>
class Stack{
    public:
        void push(T const& elem);
        void pop();
        T const& top() const;
        bool empty() const{
            return elems.empty();
        };
   
    private:
        std::vector<T> elems;

};

template<typename T>
void Stack<T>::push(T const& elem){
    elems.push_back(elem);
}
template<typename T>
void Stack<T>::pop(){
    assert(!elems.empty());
    elems.pop_back();
}
template<typename T>
T const& Stack<T>::top() const{
    assert(!elems.empty());
    return elems.back();
}
#endif