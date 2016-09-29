// 02 https://youtu.be/f2nMqNj7vxE?t=5m47s

// * pass a parameter by value (1)
// * pass a parameter by reference (2-4)	caution: data race problem


#include <iostream>
#include <thread>

class Fctor {
public:
// 	void operator()(std::string msg) {			// (1) passed by value
//  	void operator()(std::string& msg) {		// (2) compile error
// 			// all parameters passed to a thread are passed by value!
 	void operator()(std::string& msg) {			// (3) no compile errer, if (4)
		std::cout << "t1 says: " << msg << std::endl;
		msg = "this string is changed by a reference";
	}
};

int main() {
	std::string s = "'std::endl' is sometimes affected by race condition";
	
// 	std::thread t1((Fctor()), s);			// (1) passed by value
	std::thread t1((Fctor()), std::ref(s));	// (4) reference wraper can be used
	
	std::cout << "from main: " << s << std::endl;
		
	if (t1.joinable())			// otherwise crash
		t1.join();
	
	std::cout << "from main2: " << s << std::endl;
	
	std::cout << "main ended" << std::endl;
}







