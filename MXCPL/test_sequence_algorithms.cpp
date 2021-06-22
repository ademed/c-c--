#include <iostream>
#include <vector>
#include <deque>
#include "sequence_algorithms.hpp"
#include "timer.hpp"
#include <algorithm>


struct Animal {};

class MyArray {
 public:
  double operator[](std::size_t) { return 0.0; }
};
class custom_iterator {
 public:
  using difference_type = std::size_t;
  using value_type = double;
  using pointer = double *;
  using reference = double &;
  using iterator_category = std::random_access_iterator_tag;
  /*
   double operator[](std::size_t i) { return 0.0; }
   custom_iterator &operator++() { return *this; }
   custom_iterator &operator--() { return *this; }
   std::size_t operator-(custom_iterator) { return 0; }
   double &operator*() { return data; }
   double *operator->() { return &data; }
   double data;
   */
};
template<class T>
void print_vector(const T &v) {
  std::cout << "v = [ ";
  for (auto &element : v) std::cout << element << " ";
  std::cout << " ]" << std::endl; 
}
void test_no_policy(){ 
std::size_t N = 5ul;
  std::vector<double> stdvA(N, 0.0), stdvB(N, 0.0), stdvC(N, 0.0),
      stdvD(N, 0.0), stdvE(N,10.0);
  double zero = 0.0, one = 1.0, two = 2.0, three = 3.0, four = 4.0, five = 5.0;

  std::cout << "============================================================="
            << std::endl;

  print_vector(stdvA);

  std::cout << "Pass a vector lvalue and an rvalue" << std::endl;
  mxcpl::utilities::copy_n<>::apply(N, stdvA, 1.0);
  print_vector(stdvA);

  std::cout << "Pass a iterator rvalue and an rvalue" << std::endl;
  mxcpl::utilities::copy_n<>::apply(N, stdvA.begin(), 2.0);
  print_vector(stdvA);

  {
    std::cout << "Pass a iterator lvalue and an rvalue" << std::endl;
    auto my_it = stdvA.begin();
    mxcpl::utilities::copy_n<>::apply(N, my_it, 3.0);
    print_vector(stdvA);
  }
  {
    std::cout << "Pass a pointer lvalue and an rvalue" << std::endl;
    double *my_ptr = stdvA.data();
    mxcpl::utilities::copy_n<>::apply(N, my_ptr, 4.0);
    print_vector(stdvA);
  }

  std::cout << "Pass a pointer rvalue and an rvalue" << std::endl;
  mxcpl::utilities::copy_n<>::apply(N, stdvA.data(), 5.0);
  print_vector(stdvA);

  std::cout << "Pass a vector lvalue and an lvalue" << std::endl;
  mxcpl::utilities::copy_n<>::apply(N, stdvA, one);
  print_vector(stdvA);

  std::cout << "Pass a iterator rvalue and an lvalue" << std::endl;
  mxcpl::utilities::copy_n<>::apply(N, stdvA.begin(), two);
  print_vector(stdvA);

  std::cout << "Pass a iterator lvalue and an lvalue" << std::endl;
  auto my_it = stdvA.begin();
  mxcpl::utilities::copy_n<>::apply(N, my_it, three);
  print_vector(stdvA);

  std::cout << "Pass a pointer lvalue and an lvalue" << std::endl;
  double *my_ptr = stdvA.data();
  mxcpl::utilities::copy_n<>::apply(N, my_ptr, four);
  print_vector(stdvA);

  std::cout << "Pass a pointer rvalue and an lvalue" << std::endl;
  mxcpl::utilities::copy_n<>::apply(N, stdvA.data(), five);
  print_vector(stdvA);

  std::cout << "Pass a pointer rvalue and a pointer rvalue" << std::endl;
  mxcpl::utilities::copy_n<>::apply(N, stdvA.data(), stdvE.data());
  print_vector(stdvA);

  std::cout << "============================================================="
            << std::endl;
}

int main(int, char **) {      

  // void (*ptr)() = test_no_policy;
  // std::cout <<  timer(ptr)/1e6 << "  seconds" << std::endl;
  const std::size_t N = 10000000, alignment = 32;
  typedef mxcpl::utilities::OMP_ParallelForSIMD<alignment,4> policy;
  std::vector<double> stdvA(N, 5.0), stdvB(N, 20.0); 
  // auto x = (double*) operator new[](sizeof(double)* N, (std::align_val_t)(alignment));
  // auto y = (double*) operator new[](sizeof(double)* N, (std::align_val_t)(alignment));
  // auto check1  = reinterpret_cast<size_t>(x)% alignment;
  // auto check2  = reinterpret_cast<size_t>(y)% alignment;
   auto check1  = reinterpret_cast<size_t>(stdvA.data())% alignment;        
   auto check2  = reinterpret_cast<size_t>(stdvB.data())% alignment;       
  std::cout << check1 << "   " << check2 << std::endl;
  double one = 1.0;                 
  auto start = std::chrono::high_resolution_clock::now();  
    for (size_t i = 0; i < 1000; i++)      
    {
        mxcpl::utilities::copy_n<>::apply(N, stdvA, stdvB.data());        
       //mxcpl::utilities::copy_n<policy>::apply(N, stdvA.data(), stdvB.data());


    }

  auto end = std::chrono::high_resolution_clock::now(); 
  auto time = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
  //  ::operator delete(x, std::align_val_t{ alignment });
  // ::operator delete(y, std::align_val_t{alignment});
  std::cout << time/1e6 << " seconds" << std::endl;




  return 0;
}