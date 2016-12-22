// * The Base Constructor is allways called
// * If a Derived Constructor is implementet:
//     1.) call base constructor
//     2.) call derived constructor
// * If only a Derived Constructor exist, only the Derived Constructor is called
// * It is possible, to not have a Constructor at all
// * If the DerivedConstructor(int i) exists:
//     1.) BaseConstructor() is called				// (even if BaseConstructor(int i) exists)
//     2.) DerivedConstructor(int i) is called		// DerivedConstructor() is not called
//     * use "Derived(int i) : Base(i)" to call the BaseConstructor(int i) instead of BaseConstructor()


// Ein Template kann nicht virtual sein!
// Die auskommentierten Zeilen zeigen den missglückten Versuch, virtuelle Templates zu nutzen

#include <iostream> 
#include <string>
#include <typeinfo>


class Base {
public:
	Base();
	Base(int i);
	
// 	template<typename T>
// 	void operator()(T arg);
// 	template<typename T>
// 	virtual void derivedFct(T arg);	//Templates may not be 'virtual'
	
// 	void operator()(int i);	
	void baseFctPublic();
	
protected:
	virtual void derivedFct(int i) = 0;	//Fct. can be modified by derived class
	
private:
	void baseFctPrivate();		//Base fct. cant be modified or called by derived class
};


class Derived : public Base {
public:
	Derived(int i);
	Derived();
	
	void derivedFct(int i);	// this function has to be implemented
};








// .cpp file
// ////////////////////////////////////////////////////////////////////////////


Base::Base()
{
	std::cout << "Base constructor called" << std::endl;
	
	baseFctPrivate();
};

Base::Base(int i)
{
	std::cout << "Base constructor called: " << i << std::endl;
	
	baseFctPrivate();
};

// Base::operator()(T arg) {
// 	std::cout << "Base operator() called" << std::endl;
// 	baseFct();
// // 	derivedFct(arg);
// }

// void Base::operator()(int i)
// {
// 	std::cout << "Base operator() called:   " << i << std::endl;
// 	baseFct();
// 	derivedFct(i);
// }

void Base::baseFctPrivate()
{
	std::cout << "Base baseFctPrivate() called" << std::endl;
}

void Base::baseFctPublic()
{
	std::cout << "Base baseFctPublic() called" << std::endl;
}




Derived::Derived(int i) : Base(i)
{
	std::cout << "Derived constructor called: " << i << std::endl;
}

Derived::Derived()
{
	std::cout << "Derived constructor called: " << std::endl;
}

void Derived::derivedFct(int i)
{
	std::cout << "Derived derivedFct(int i) called:   " << i << std::endl;
}




int main() {
//     Base b;
// 	std::cout << std::endl << std::endl;
// 	b.baseFctPublic();
// 	std::cout << std::endl << std::endl;
	
	Derived d2(2);
	std::cout << std::endl << std::endl;
// 	Derived* d2 = new Derived();
	std::cout << std::endl << std::endl;
}



