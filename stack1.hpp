//#pragma once
#ifndef STACK1_HPP
#define STACK1_HPP

#include <cassert>
#include <vector>

template<typename T, template<typename> class cont = std::vector> //template template parameter with default value
class Stack{

    public:
        void push(T const& elem);
        void pop();
        T const& top() const;
        bool empty() const{
            return elems.empty();
        };

        template<typename U, template<typename> class S> //implementing non-member template function 
        friend std::ostream& operator<< (std::ostream& strm, Stack<U,S> const& stck);

        template<typename U, template<typename> class S>
        Stack<T, cont>& operator=(Stack<U,S> const& stc);
        template<typename,template<typename> class> friend class Stack; // this makes private members of stc accessible
       
   
    private:
        std::vector<T> elems; 

};

template<typename T, template<typename> class cont>
    template<typename U, template<typename> class S>
    Stack<T, cont>& Stack<T,cont>::operator=(Stack<U,S> const& stc)
    {
        std::cout << "operator= called" << std::endl;
        elems.clear();
        elems.insert(elems.begin(), stc.elems.begin(), stc.elems.end());
        return *this;
    }



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
                    strm << (*start).first << "    " <<  (*start).second << " \n" ;
            }
            return strm;
    }
    private:
        std::vector<std::pair<T,S>> elems; 

};

template<typename T, template<typename> class U>
std::ostream& operator <<(std::ostream& strm, Stack<T,U> const& stck)
{
            for(auto start = stck.elems.rbegin();  start != stck.elems.rend(); start++){
                    strm << *start << " \n" ;
            }
            return strm;
}

template<typename T, template<typename> class cont>
void Stack<T, cont>::push(T const& elem){
    elems.push_back(elem);
}
template<typename T, template<typename> class cont>
void Stack<T, cont>::pop(){
    assert(!elems.empty());
    elems.pop_back();
}
template<typename T, template<typename> class cont>
T const& Stack<T, cont>::top() const{
    assert(!elems.empty());
    return elems.back();
}


#endif