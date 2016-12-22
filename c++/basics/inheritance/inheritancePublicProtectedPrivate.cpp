// http://cboard.cprogramming.com/cplusplus-programming/64340-purpose-public-class-name.html

class PrivD : private   B { };		// private inheritance
class ProtD : protected B { };
class PublD : public    B { };

// privat inheritance:
//	public 		-> 		privat
//	protected	->		privat
//	privat		stays	privat

// protected inheritance:
//	public 		-> 		protected
//	protected	stays	protected
//	privat		stays	privat

// privat inheritance:
//	public 		stays	public
//	protected	stays	protected
//	privat		stays	privat



// Working example

#include <iostream> 
#include <string>

void printNumber(int i){
	std::cout << "i: " << i << std::endl;
}

class classA {
public:
	int intPublic = 1;
protected:
	int intProtected = 2;
private:
	int intPrivate = 3;
};

class classB : public classA {
public:
	int intPublic2Public = intPublic;
	int intProtected2Public = intProtected;
// 	int intPrivate2Public = intPrivate;		//not possible
	int returnIntPublic() 		{return intPublic;};
	int returnIntProtected()	{return intProtected;};
};


int main() {

  classA myClassA;
  classB myClassB;
  
  printNumber(myClassA.intPublic);			//1
//   printNumber(myClassA.intProtected);	//not possible
//   printNumber(myClassA.intPrivate);		//not possible
  
  printNumber(myClassB.intPublic);			//1
//   printNumber(myClassB.intProtected);	//not possible
//   printNumber(myClassB.intPrivate);		//not possible
  
  printNumber(myClassB.intPublic2Public);		//1
  printNumber(myClassB.intProtected2Public);	//2

  printNumber(myClassB.returnIntPublic());		//1
  printNumber(myClassB.returnIntProtected());	//2
}

