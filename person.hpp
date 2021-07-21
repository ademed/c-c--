#ifndef PERSON_HPP
#define PERSON_HPP
#include <string>

struct Person{
public:
    Person() = default;
    template<typename T>
    using EnableIfConvertible = std::enable_if_t<std::is_convertible_v<T, std::string>>;
    template<typename STR, typename = EnableIfConvertible<STR>>
    explicit Person(STR&& str): mName(std::forward<STR>(str)){}
 //   Person(Person const& other): mName(other.mName){} //copy constructor
    Person(Person const& other) = default; //copy constructor
    Person(Person&& other): mName(std::move(other.mName)){}

private:
    std::string mName;

};





#endif 