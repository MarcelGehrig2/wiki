
#include <iostream> 
#include <string>


int main() {

  int value = 5;
  int *p;
  std::cout << "*p: " << *p << std::endl;
  std::cout << "&p: " << &p << std::endl;
  std::cout << "p:  " <<  p << std::endl;
  
  std::cout << std::endl << "p = &value" << std::endl << std::endl;
  p = &value;
  std::cout << "*p: " << *p << std::endl;
  std::cout << "&p: " << &p << std::endl;
  std::cout << "p:  " <<  p << std::endl;
  
//   int *p2;
//   p2 = 0x7ffe0a5bd668;	//compiler error
  
//   p = 5; 	//compiler error
//   &p = 5; 	//compiler error
  
  
	
}


