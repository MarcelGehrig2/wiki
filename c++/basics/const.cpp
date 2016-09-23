// https://www.youtube.com/watch?v=7arYbAhu0aw 

mutable //don't use



int main() {
    const int i = 10;
    i = 6;              //compile error
}


const int *p1 = &i;     // data is const (const is befor int), but pointer is not
*p1 == 5;               // compile error
p1++;                   // ok


int* const p2;          // pointer is const (const is befor pointer p2), but data is not
*p2 == 5;               // ok
p2++;                   // compile error


const int* const p3;    // data AND pointer are both constant
*p3 == 5;               // compile error
p3++;                   // compile error


int const *p4 = &i;
const int *p4 = &i;     // identical -> data is const

// if const is on the left  of *, data is const
// if const is on the right of *, pointer is const


int main() {
    const int i = 10;
    // i = 6;                       //compile error
    const_cast<int&>(i) = 6;        // ok, but don't do this
    std::cout << i << std::endl;    // 10 ???
}


// const used with functions
// /////////////////////////
// https://www.youtube.com/watch?v=RC7uE_wl1Uc
#include <iostream>
#include <string>

class Dog {
    int age;
    std::string name;
public:
    Dog() { age = 3; name = "dummy"; }
    void setAge(int& a) { age = a; a++; }
    void setAge(const int& a) { age = a; }	//overloading is allowed
    
    // Const Parameter
    //void setAge(const int& a) { age = a; a++; }	//compile error
    //void setAge(const int a) { age = a; }			//useless, passed by value -> copy anyway
    
    // Const return value
    const std::string& getName() { return name; }	//returns a const string reference; by reference -> more efficient; const -> caller can't change returned value
    //const std::string getName() { return name; }	//useless, passed by vale -> copy anyway
    
    // Const Function
    void printDogName() const { std::cout << name << " const" << std::endl; }	//function will not change any of the member variables of this class
//     void printDogName() const { std::cout << name << " const" << std::endl; c++; }	//compile error
//     void printDogName() const { std::cout << getName() << " const" << std::endl; c++; }	//compile error, even getName() doesn't change member values; const function can only call other const functions
    void printDogName() { std::cout << getName() << " nonconst" << std::endl; }	//overloading is allowed; this function will be invoked wenn 'dog' is not a const; getName() can now be called
};

int main() {
    Dog d;
	const Dog dConst;

    int i = 9;
	
	// Const Parameter
    d.setAge(i);
    std::cout << i << std::endl;	//10
    
    // Const return value
    const std::string& n = d.getName();
	std::cout << n << std::endl;			// dummy

	
	// Const Function
	d.printDogName();
	dConst.printDogName();
}


