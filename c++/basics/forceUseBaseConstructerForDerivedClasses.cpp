#include <iostream> 
#include <string>

class Base
{
public:
    Base(std::string Text) {    //derived classes are forced to call this base constructor
		std::cout << "Base constructor " << Text << std::endl;
    }
};

class Derived : public Base
{
public:
    Derived(std::string Text) : Base(Text) {    //base constructor is called
		std::cout << "Derived constructor " << Text << std::endl;
    }
};


//Derived2 is not allowed. Because a base constructor is defined, it has te be called
///"error: no matching function for call to ‘Base::Base()’"

// class Derived2 : public Base
// {
// public:
//     Derived2(std::string Text) {
// 		std::cout << "Derived2 constructor " << Text << std::endl;
//     }
// };


int main() {
	Base myBase("A");

	std::cout << std::endl;
	
	Derived myDerived("B");
}



//output:

//Base constructor A
//
//Base constructor B
//Derived constructor B

