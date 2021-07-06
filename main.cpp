#include <iostream>
#include "stack1.hpp"
#include <vector>
#include <string>
#include <chrono>
#include <unordered_map>
#include <bitset>
#include "Templates.hpp"


int main(){

    //printdoubled(2,3,4,5,5,6,7);
    std::vector<const char*> v{"Hello", "my", "new", "!", "World"}; Template::printVec<0,4,3>(v);
    std::unordered_map<std::string, std::string> aa =  {{"Ahmed","Adeyemi"},
    {"Ahmed","Faruk"}};

    Stack<float> ss; ss.push(2.5);
    Stack<int> sa; sa = ss;       
    Stack<int> some;
    std::bitset<4> bs = 1100; 
     std::cout << bs.template to_string<char, std::char_traits<char>, std::allocator<char>>();
    Template::printBitset<4>(bs);
    
    

    


    



    // something vv;
    // std::vector<something> v;
    // v.emplace_back(3,5); 
    // v.emplace_back(6,7);
    


    // stackpair<int, double> a;
    // a.push({2,3.4}); a.push({4,3.5});       
    // a.pop();
    // std::cout << a << std::endl;
    // std::vector<int> source(5,1), dest(5,0); 
    // double k = 4; const double* ptr = &k;
    
    
    // auto m = addValue(3,3,10,12,1010,-234,11222,4433,11234,113,5544,-334,2212.325556);  
    // std::cout << m << std::endl;

    // auto start = std::chrono::high_resolution_clock::now();
    // for(int i{0}; i<10000;i++)
    // {
    //     int m = addValue(3,3,10,12,1010,-234,11222,4433,11234,113,5544,-334,2212);  
    // }       
    // auto end = std::chrono::high_resolution_clock::now();
    // auto time = std::chrono::duration_cast<std::chrono::microseconds>(end-start).count();
    // std::cout << time << std::endl;






    //std::transform(source.begin(), source.end(),dest.begin(), addValue<ptr, int>);


    
    return 0;
}