// Ein Template kann nicht virtual sein!
// Die auskommentierten Zeilen zeigen den missglückten Versuch, virtuelle Templates zu nutzen

#include <iostream> 
#include <string>
#include <typeinfo>


class Base {
public:
	Base();
	
// 	template<typename T>
// 	void operator()(T arg);
// 	template<typename T>
// 	virtual void derivedFct(T arg);	//Templates may not be 'virtual'
	
	void operator()(int i);	
	
protected:
	virtual void derivedFct(int i) = 0;	//Fct. can be modified by derived class
	
private:
	void baseFct();		//Base fct. cant be modified or called by derived class
};


class Derived : public Base {
public:
	Derived();
	
	void derivedFct(int i);
};





Base::Base()
{
	std::cout << "Base constructor called" << std::endl;
};

// Base::operator()(T arg) {
// 	std::cout << "Base operator() called" << std::endl;
// 	baseFct();
// // 	derivedFct(arg);
// }

void Base::operator()(int i)
{
	std::cout << "Base operator() called:   " << i << std::endl;
	baseFct();
	derivedFct(i);
}


void Base::baseFct()
{
	std::cout << "Base baseFct() called" << std::endl;
}


Derived::Derived()
{
	std::cout << "Derived constructor called" << std::endl;
}

void Derived::derivedFct(int i)
{
	std::cout << "Derived derivedFct(int i) called:   " << i << std::endl;
}




int main() {
    Derived d;
	
	d(10);
}

// OUTPUT
// //////
// Base constructor called
// Derived constructor called
// Base operator() called:   10
// Base baseFct() called
// Derived derivedFct(int i) called:   10
// *** Exited normally ***

