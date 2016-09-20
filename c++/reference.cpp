// Pointer:   https://www.tutorialspoint.com/cplusplus/cpp_pointers.htm 
// Reference: https://www.tutorialspoint.com/cplusplus/cpp_references.htm 


#include <iostream>

// funciton prototypes
void add25ByValue1 (int i);        // Will not work correctly
int  add25ByValue2 (int i);        // Will work correctly
void add25ByPointer (int *i);
//void add25ByPointer (int* i);    // identical
void add25ByReference (int &i);
//void add25ByReference (int& i);  // identical
 
int main ()
{
   // declare simple variable
   int i = 2;
   // declare pointer variable
   int* iPointer = &i;
   // declare reference variable
   int& iRef = i;
   
   // using different variables
   iRef = i+3;
   std::cout << "Value of i :             " << i << std::endl;
   std::cout << "Value of i pointer :     " << *iPointer << std::endl;
   std::cout << "Value of i reference :   " << iRef  << std::endl;
   std::cout << "Address of i pointer :   " << iPointer << std::endl;
   std::cout << "Address of i reference : " << &iRef  << std::endl;
   
   
   // using different variables in functions
   std::cout << std::endl;
   i = 5;
   add25ByValue1(i);
   std::cout << "Result of add25ByValue1 :    " << i << std::endl;
   
   i = 5;
   i = add25ByValue2(i);
   std::cout << "Result of add25ByValue2 :    " << i << std::endl;
   
   i = 5;
   add25ByPointer(&i);
   std::cout << "Result of add25ByPointer :   " << i << std::endl;
   
   i = 5;
   add25ByReference(i);
   std::cout << "Result of add25ByReference : " << i << std::endl;
   
   return 0;
}


// function definitions
void add25ByValue1 (int i) {
    i = i + 25;
}

int add25ByValue2 (int i) {
    i = i + 25;
    return i;
}

void add25ByPointer (int *i) {
//void add25ByPointer (int* i) {        // identical
    *i = *i + 25;
}

void add25ByReference (int &i) {
//void add25ByReference (int& i) {      // identical
    i = i + 25;
}
