//http://stackoverflow.com/questions/2218254/variable-initialization-in-c

// Never trust a variable, which is not initialized!


Variables are automtically initialized if:

* it's a class/struct instance in which the default constructor initializes all primitive types; like MyClass instance;
* you use array initializer syntax, e.g. int a[10] = {} (all zeroed) or int a[10] = {1,2}; (all zeroed except the first two items: a[0] == 1 and a[1] == 2)
* same applies to non-aggregate classes/structs, e.g. MyClass instance = {}; (more information on this can be found http://stackoverflow.com/questions/1069621/are-members-of-a-c-struct-initialized-to-0-by-default/1069634#1069634)
* it's a global/extern variable
* the variable is defined static (no matter if inside a function or in global/namespace scope) - thanks Jerry

Never trust on a variable of a plain type (int, long, ...) being automatically initialized! It might happen in languages like C#, but not in C & C++.




// Example program
#include <iostream>
#include <string>

int foo() {
    int i;
    return i;
}

class Bar {
    public:
    int i;
    static int iStatic;
    struct struct1 {
        int i1;
    };
    
    int getI1 () {
        struct1 myStruct1;
        return myStruct1.i1;
    };
};

int main()
{
    int i;
	struct struct2 {
		int i2;
	};
	struct2 myStruct2;
    std::cout << "global variable:                " << i << std::endl;              // 0
    std::cout << "non global variable:            " << foo() << std::endl;          // garbage
    std::cout << "non primitive global variable:  " << myStruct2.i2 << std::endl;	// garbage
    
    Bar bar;
    std::cout << "primitive variable of class:    " << bar.i << std::endl;          // garbage
//    std::cout << "static primitive variable of class: " << bar.iStatic << std::endl;    //compile error
    std::cout << "nonprimitive variable of class: " << bar.getI1() << std::endl;    // garbage
	
}
