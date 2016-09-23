// Pointer:   https://www.tutorialspoint.com/cplusplus/cpp_pointers.htm 
// Reference: https://www.tutorialspoint.com/cplusplus/cpp_references.htm 
//  http://www.cplusplus.com/forum/beginner/3958/ jsmiths post

// Use reference wherever you can, pointers wherever you must.

// reference and pointer are have quite the same performance and cost
// a reference of an object behaves like the object (the reference is an alias of the object)
// in c++, references are the prefered way of passing an object
// in c, there are no references -> use pointer

// A pointer can be re-assigned any number of times while a reference can not be re-seated after binding. (like a constant pointer)
// A reference is like an alias
// If you check the address of reference and referrant object, both return same, unlike a pointer. 
// Pointers can point nowhere (NULL), whereas reference always refer to an object.
// You can't take the address of a reference like you can with pointers.
// There's no "reference arithmetics" (but you can take the address of an object pointed by a reference and do pointer arithmetics on it as in &obj + 5).



// syntax for variables passed by value or reference is the same
vector< int >    vec;           // original variable
vector< int >&   rvec( vec );   // reference to original variable
vector< int >*   pvec( &vec );  // pointer to original variable

vec.push_back( 4 );             // Note use of "." to access member
rvec.push_back( 4 );            // Note again use of "." to access member
pvec->push_back( 4 );           // Note use of "->" to access member



// example program
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
