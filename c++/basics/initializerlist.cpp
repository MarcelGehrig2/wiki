// initializer List
// ////////////////

// https://www.youtube.com/watch?v=zW_lpWKpFGU

#include <iostream> 
#include <string>

class classA {
public:
	int intA=10;
	classA(int intA) : intA(intA) {
		std::cout << intA << std::endl;
		intA=20;                            //only local variable is changed!
		std::cout << intA << std::endl;     //display local variable
	}
	
	int getIntA() {
		std::cout << intA << std::endl;     //display (unchanged) member variable
	}
};

class classB {
public:
	int intB=60;
	classB(int intB) : intB(intB) {
		std::cout << intB << std::endl;    
		this->intB=70;                      //use this to change member variable
		std::cout << intB << std::endl;
	}
	
	int getIntB() {
		std::cout << intB << std::endl;     //display (changed) member variable
	}
};

class classC {								//by reference
public:
	int &intC;
	classC(int &intC) : intC(intC) {		//both intC references point to the same int!
		std::cout << intC << std::endl;    
		intC=120;                      		//intC is here a reference. So original int is successfully changed
		std::cout << intC << std::endl;		//display (changed) original int
	}
	
	int getIntC() {
		std::cout << intC << std::endl;     //display (changed) original int
	}
};



int main() {
	 classA myClassA(15);		//15 20
	myClassA.getIntA();			//15
	
	std::cout << std::endl;
	
	classB myClassB(65);		//65 65 //only local variable are displayed
	myClassB.getIntB();			//70	//member variable successfully changed
	
	std::cout << std::endl;
	
	int intC=110;
	classC myClassC(intC);		//110 120 //
	myClassC.getIntC();			//120
}

