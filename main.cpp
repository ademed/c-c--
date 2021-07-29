#include "INCLUDES.hpp"


constexpr unsigned long long Factorial(unsigned m){
    unsigned long long  ans = 1;
    while (m != 0)
    {
        ans = ans * m;
        m = m - 1;
    }
    return ans;
}

struct testing{testing() = delete;};






int main(){
    std::size_t sz = 1000;
    

    MyArray<double> x1(sz,12);         
    MyArray<double> y1(sz,13);    
    Array<double> x(sz,12);  
    Array<double> y(sz,13);
       
    ////----------OPERATOR OVERLOAD WITH EXPRESSION TEMPLATES-----//
    auto start = std::chrono::high_resolution_clock::now();
    Array<double> z(sz);
    for(int i = 0; i < 10000; ++i){      
        z = 2.0*x + x*y;    
    }
    auto end = std::chrono::high_resolution_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
    std::cout << "Exp Temp: "<< time << " microseconds" <<std::endl;

    ////--------OPERATOR OVERLOAD WITHOUT EXPRESSION TEMPLATES----//
    start = std::chrono::high_resolution_clock::now();
    MyArray<double> z1(sz);
    for(int i = 0; i < 10000; ++i){
        z1 = 2.0*x1 + x1*y1;      
    }
    end = std::chrono::high_resolution_clock::now();
    time = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
    std::cout << "NO Expr Temp: "<< time << " microseconds" <<std::endl;


    ////------------HAND CODED---------//////
    start = std::chrono::high_resolution_clock::now();
    for(int i = 0; i < 10000; ++i){
        MyArray<double> z2(sz);
        for (size_t j = 0; i < x.Size(); i++)   
        {
            z2[j] = 2.0*x[j] + x[j]*y[j];           
        }             
    }
    end = std::chrono::high_resolution_clock::now();
    time = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
    std::cout << "Hand Coded: "<< time << " microseconds" <<std::endl;


    
    //std::cout << z << std::endl;     

   // std::cout << Template::HasType<std::vector<int>>::value << std::endl;      

    // std::list<double> v;  
    // std::cout << sizeof(Template::ElementT_t<decltype(v)>) << std::endl;
    // std::cout << typeid(typename Template::ElementT_t<decltype(v)>).name();
    //std::cout << Template::is_default_constructible2<testing>::value << std::endl;  
        
    // double arr[] = {1,2,3,4,5,6,7,8,9,10};
    // auto val = Template::accum_policy<double, Template::MultPolicy_template>(arr, arr+ 10);
    // std::cout << val << std::endl;        
    // std::cout << *std::max_element(v.begin(), v.end())<< std::endl;
    #if 0

    std::vector<int> vec = {1,2,3,4,5,6,7,8,9};
    // foreach(vec.begin(), vec.end(), [](int i){std::cout << i << std::endl;}); //using lambda expression as functor
    // foreach(vec.begin(), vec.end(), FuncObj()); //using a functor 
    // foreach(vec.begin(), vec.end(), [](std::string const& prefix, int i){std::cout << prefix << i << std::endl;}, "value: ");
    Template::FuncObj a; std::string str =  "-value: ";
    Template::foreach(vec.begin(), vec.end(), &Template::FuncObj::MemberFunc, a, "value: "); 
    
    auto p = sizeof(a);
    std::cout << std::addressof(a) << std::endl;
    #endif
 
        

    
    #if 0
    auto firstLamda = [](int i){std::cout << "this is my first lamda expression printing the value: " << i << std::endl;};
    //firstLamda(23);
    int m = 3;
    auto change = [=]() mutable {m*=4; std::cout << "from lambda: " << m << std::endl;};
    change();
    std::cout << m << std::endl;
    #endif

    // int arr[20]{};
    // std::vector<double> v(30,0.0); 
    // int* p = arr; 
    // std::cout << len(arr) << std::endl;

    
    #if 0
    auto start = std::chrono::high_resolution_clock::now();
    
    for (size_t i = 0; i < 1000000000; i++)
    {
       //auto m = Template::Factorial<15>::value;
        const auto m = Factorial(15);
    }
    auto end = std::chrono::high_resolution_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::microseconds>(end-start).count();
    std::cout << time << std::endl;
    #endif





    #if 0 //significant spead improvement when calling a pass-by-value function but argument is passed by cref instead
    std::string s = "ahmedinho"; std::vector<double> vv(100000,0.0);
    auto start = std::chrono::high_resolution_clock::now();
    for (size_t i = 0; i < 100000; i++)
    {
       Template::PrintT((vv));
      // PrintT(vv);
    }
    auto end = std::chrono::high_resolution_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::microseconds>(end-start).count();
    std::cout << time << std::endl;
    #endif
    

    
   // PrintV("hi");
    //PrintV(2455);
   //PrintV(std::string("hi"));
   //PrintV(std::move(s));

 

    #if 0
    int a = 10; int b = 5; std::vector<double> vv(4,0.0); 
    if constexpr (std::is_lvalue_reference_v<decltype((vv.data()))>){
        std::cout << "expression is lvalue\n";
    }
    else if constexpr(std::is_rvalue_reference_v<decltype((vv.data()))>){
         std::cout << "expression is xvalue\n";
    }
    else {
         std::cout << "expression is rvalue\n";
    }
    #endif

 

    #if 0 //-----Tesing volatile keyword-----///
    volatile const int local = 10; //ignores any compiler optimization for this variable. so values are directly influenced from variable's location
    int *ptr = (int*) &local;
    std::cout << "Initial value of local :" << local << std::endl ;
    *ptr = 100;
    std::cout << "Modified value of local :" << local << std::endl ;
    #endif
  

    #if 0 //testing enable_if<> construct in attempt to use function template in forwarding references
    std::string str = "Ahmed";
    Person p1(str);      
    Person p2("moving Ahmed");
    Person p3(p1);
    Person p4(std::move(p1));     
    #endif

 ////------TESTING UNORDERED MAP AND ITERATORS-----///
    #if 0
    std::unordered_map<std::string, int> map;
    map["ahmed"] = 1; map["adeyemi"] = 2;  map["kausa"] = 3;  map["abu"] = 5;
    for (auto [key, value]:map)
    {
        std::cout << key << ": " << value << std::endl;
    }
        std::cout << "------------------------" << std::endl;
    for(auto it = map.begin(); it != map.end(); ++it)
    {
        std::cout << it->first << ": " << it->second << std::endl;
    }
    #endif
    

    //------TESTING MOVE SEMANTIC------//
    #if 0
    std::string m = "Abracadabra";
    std::cout << "Address of m before move: " << &m << std::endl;
    std::string n = std::move(m);
    std::cout << "value of m after move: " << m << std::endl;
    std::cout << "value of n after move: " << n << std::endl;
    std::cout << "Address of m after move: " << &m << std::endl;
    std::cout <<"Address of n after move: " << &n << std::endl;
    #endif

        #if 0
        std::string str = "Ahmed";
        std::cout << "string before used: " << str << std::endl;
        g("AHMED"); //trying to test if string literals are lvalues as claimed in the template texbook I'm currently reading (7/8/2021)
        std::cout << ("string after used: ") << str << std::endl;     
        #endif

    //printdoubled(2,3,4,5,5,6,7);
    // std::vector<const char*> v{"Hello", "my", "new", "!", "World"}; Template::printVec<0,4,3>(v);
    // std::unordered_map<std::string, std::string> aa =  {{"Ahmed","Adeyemi"},
    // {"Ahmed","Faruk"}};

    // Stack<float, std::vector> ss; ss.push(2.5);   
    // Stack<int> sa; sa = ss;   
    // std::cout << ss << std::endl;
    // Template::print(3,4,5.6,"Ahmed");          
    // std::bitset<4> bs = 1100; 
    //  std::cout << bs.template to_string<char, std::char_traits<char>, std::allocator<char>>();
    // Template::printBitset<4>(bs);
    // Template::pi<double> = 5.1335;    
    // Template::printPi();

    
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