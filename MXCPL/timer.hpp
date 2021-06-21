#include <iostream>
#include <chrono>
template<typename T>
auto timer(T(*func)())
{
    auto start = std::chrono::high_resolution_clock::now();
     func();
    auto end = std::chrono::high_resolution_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
    return time;
}
