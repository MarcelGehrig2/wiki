// 02 https://www.youtube.com/watch?v=LL8wkskDlbs&list=PL5jc9xFGsL8E12so1wlMS0r0hTQoJL74M

// * race condition

// TODO: wraper class: Wrapper(t1)		// RAII

#include <iostream>
#include <thread>

int maxI = 100;


class Fctor {
public:
	void operator()() {			// overwrite the operator "()"
		for (int i=0; i>(-1*maxI); i--) {
			std::cout << "from t1 " << i << std::endl;
		}
	}
};

int main() {
	Fctor fct;
	std::thread t1(fct);		// t1 starts running
// 	std::thread t1(Fctor());	// compile error; it's interpreted as an function declaration
// 	std::thread t1((Fctor()));	// works as intended
	
	
	for (int i=0; i<maxI; i++)
		std::cout << "from main: " << i << std::endl;

	if (t1.joinable())			// otherwise crash
		t1.join();
	
	std::cout << "main ended" << std::endl;
}








