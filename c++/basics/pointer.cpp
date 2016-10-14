
#include <iostream> 
#include <string>


int main() {

  int value = 5;
  int *p;
  std::cout << "*p: " << *p << std::endl;       //-1991643855
  std::cout << "&p: " << &p << std::endl;       //0x7fff688821f8
  std::cout << "p:  " <<  p << std::endl;       //0x400810
  
  std::cout << std::endl << "p = &value" << std::endl << std::endl;
  p = &value;
  std::cout << "*p: " << *p << std::endl;       //5
  std::cout << "&p: " << &p << std::endl;       //0x7fff688821f8
  std::cout << "p:  " <<  p << std::endl;       //0x7fff688821f4
  
//   int *p2;
//   p2 = 0x7ffe0a5bd668;	//compiler error
  
//   p = 5; 	//compiler error
//   &p = 5; 	//compiler error
  
  
	
}


// output 
/*
*p: -1991643855
&p: 0x7fff688821f8
p:  0x400810

p = &value

*p: 5
&p: 0x7fff688821f8
p:  0x7fff688821f4
*/
