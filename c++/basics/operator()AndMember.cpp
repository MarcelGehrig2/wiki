

#include <iostream> 
#include <string>
#include <typeinfo>



class Member {
public:
	Member();
	~Member();
};


class Base {
public:
	Base();
	
	void operator()();
	
	void baseFct();

// 	Member myMember;
};





// .cpp file
// ////////////////////////////////////////////////////////////////////////////


Base::Base()
{
	std::cout << "Base constructor called" << std::endl;

};

void Base::baseFct()
{
	std::cout << "Base Fct called" << std::endl;
	
	Member* myMemberHeapPtr = new Member(); 
	
	std::cout << "Member createt on Heap" << std::endl;
	
	Member myMember2; 
	
	std::cout << "Member createt on Stack" << std::endl;
}

void Base::operator()()
{
	std::cout << "Base operator() called" << std::endl;
}





Member::Member()
{
	std::cout << "Member constructor called" << std::endl;
}

Member::~Member()
{
	std::cout << "Member destructor called" << std::endl;

}



int main() {

	Base b;
 	std::cout << "" << std::endl;
	b.baseFct();
 	std::cout << "" << std::endl;
	b();
// 	std::cout << "it works" << std::endl;
// 	std::cout << "it works" << std::endl;
}




