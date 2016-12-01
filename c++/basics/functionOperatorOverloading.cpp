// https://www.tutorialspoint.com/cplusplus/function_call_operator_overloading.htm



#include <iostream> 
#include <string>
#include <typeinfo>

class A {
public:
	int intA;
	int intB;
	
	A() : A(0,0) { std::cout << "constructor A() called" << std::endl;	}
// 	A() {	}	//random values for intA and intB
	
	A(int a, int b) {
		std::cout << "constructor A(int a, int b) called" << std::endl;
		intA = a;
		intB = b;
	}
	
	void operator()(int a, int b) {
		std::cout << "operator() called" << std::endl;
		intA += a;
		intB += b;
	}
	
	void print() {
		std::cout << "intA: " << intA << "    intB: " << intB << std::endl;
	}
};


int main() {
    A a(1, 2);
// 	std::cout << typeid(a).name() << std::endl;
	a.print();		//intA: 1    intB: 2
	
	a(10, 20);
	a.print();		//intA: 11    intB: 22
	
	
	
	std::cout << std::endl;
		
		
	
	A a2;
// 	std::cout << typeid(a2).name() << std::endl;
	a2.print();		//intA: 0    intB: 0
	
	a2(10, 20);
	a2.print();		//intA: 10    intB: 20
}
