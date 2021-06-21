#include <iostream>
#include <chrono>
#include <omp.h>
#include <memory>

void saxpy2(float* x, float* y, int i, float a) {
    y[i] = a * x[i] + y[i];
}
typedef int Type;
#pragma omp declare simd uniform(x,y) linear(i:1) aligned(x,y:8) //processor(core_3rd_gen_avx)
void saxpy(Type* x, Type* y, int i, Type a) {
    y[i] = a * x[i] + y[i];
}

int main(){
//     auto start = std::chrono::high_resolution_clock::now();
//    #pragma omp parallel for
//     for (size_t i = 0; i < 100000000; i++)
//     {
        
//     }
//     auto end = std::chrono::high_resolution_clock::now();
//     auto time = std::chrono::duration_cast<std::chrono::microseconds>(end-start).count();
//     std::cout << time << std::endl;

// #pragma omp parallel
// {
//     #pragma omp critical
//     {
//       std::cout <<"Printing from thread " << __STDCPP_DEFAULT_NEW_ALIGNMENT__ << std::endl;
//     }

// }



  std::size_t size = 10000000, alignment = 32; Type a = 10;
   auto yy = (Type*) operator new[](sizeof(Type)* size, (std::align_val_t)(alignment));
   auto xx = (Type*) operator new[](sizeof(Type)* size, (std::align_val_t)(alignment));
//    Type* x = new Type[size];
//    Type* y = new Type[size];
   auto start = std::chrono::high_resolution_clock::now();

   for (size_t j = 0; j < 1000; j++)
   {
        #pragma omp parallel for
            for (int i = 0; i < size; ++i)
            {
                //saxpy(x, y, i, a);
                 saxpy(xx, yy, i, a);
                 //yy[i] = a * xx[i] + yy[i];
            }
   }
   
   auto end = std::chrono::high_resolution_clock::now();
   auto time = std::chrono::duration_cast<std::chrono::seconds>(end - start).count();
   std::cout << time << " seconds" << std::endl;
    ::operator delete(xx, std::align_val_t{ alignment });
    ::operator delete(yy, std::align_val_t{ alignment });
    std::cout << __STDCPP_DEFAULT_NEW_ALIGNMENT__ << std::endl;
   //delete[] x; delete[] y;

    
    
    // for (size_t i = 0; i < 100000; i++)
    // {
    //      float* x = new float[size];
    //      auto test = reinterpret_cast<std::size_t>(x) % (alignment);
    //      //std::cout<< test << std::endl;
    //      delete[] x;
    // }
    


//     std::size_t size = 10000000, alignment = 8; //short aa = 10;
//    short* a = new short[size] {2};
//    short* b = new short[size]{2};
//    short* c = new short[size] {2};


   
//    auto start = std::chrono::high_resolution_clock::now();
//     int i;
     //#pragma omp simd linear(i:4)
        // for (i=0; i < size; i+=4)
        // {
        //     y[i] = x[i] + x[i];
        //     y[i+1] = x[i+1] + x[i+1];
        //     y[i+2] = x[i+2] + x[i+2];
        //     y[i+3] = x[i+3] + x[i+3];
        // } 
        // #pragma omp simd linear(i:1)
        // for (i=0; i < size; i++)
        // {
        //     y[i] = x[i] + x[i];

        // } 
        // for (size_t j = 0; j < 10000; j++)
        // {
        //     //#pragma omp simd 
        //     for( i = 0; i < size; ++i) 
        //     { //C1
        //     c[i] += a[i]*b[i];
        //     }   
        // }
        
    

//    auto end = std::chrono::high_resolution_clock::now();
//    auto time = std::chrono::duration_cast<std::chrono::seconds>(end - start).count();
//    std::cout << time << " seconds" << std::endl;
//     //delete[] x; delete[] y; 
//      delete[] a; delete[] b;  delete[] c; 

    return 0; 
}