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
        template<typename U> //implementing non-member template function 
        friend std::ostream& operator << (std::ostream& strm, Stack<U> const& stck);
   
    private:
        std::vector<T> elems; 

};

template<typename T, typename S>
class Stack<std::pair<T,S>>{

    public:
        void push(std::pair<T,S> const& elem){
            elems.push_back(elem);
        };
        void pop(){
            assert(!elems.empty());
            elems.pop_back();
        };
        std::pair<T,S> const& top() const{
            assert(!elems.empty());
            return elems.back();
        };
        bool empty() const{
            return elems.empty();
        };

    friend std::ostream& operator << (std::ostream& strm, Stack<std::pair<T,S>> const& stck){
        for(auto start = stck.elems.rbegin();  start != stck.elems.rend(); start++){
                    strm << *(start).first() << "    " <<  *(start).second() << " \n" ;
            }
            return strm;
    }
    private:
        std::vector<std::pair<T,S>> elems; 

};

template<typename T>
std::ostream& operator <<(std::ostream& strm, Stack<T> const& stck)
{
            for(auto start = stck.elems.rbegin();  start != stck.elems.rend(); start++){
                    strm << *start << " \n" ;
            }
            return strm;
}

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