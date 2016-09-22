//only use autotypes where the implication is clear and the usage is concise (kurzgefasst)


int foo = 0;
auto bar = foo;  // the same as: int bar = foo; 

///////////////////////////////////////////////////////////////////////////////

int foo = 0;
decltype(foo) bar;  // the same as: int bar; 

///////////////////////////////////////////////////////////////////////////////

// Speicherklasseatribute siehe speicherklasseatribute.cpp

///////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <typeinfo>

int func() {
    return 42;
}

int main( int argc, char ** argv = {
    auto x = func();
    std::cout << x std::endl;                       //42
    std::cout << typeid(x).name() << std::endl;     //i
    return 0;
}

///////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <vector>

int main( int argc, char ** argv = {
    verctor<int> i = { 1, 2, 3, 4, 5 };
    for ( auto it = i.begin(); it != i.end(); ++it ) {
//  for ( vector<int>::iterator it = i.begin(); it != i.end(); ++it ) {     //identical
        std::cout << *it << std::endl;
    }
    return 0;
}
