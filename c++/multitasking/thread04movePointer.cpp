// 02 https://youtu.be/f2nMqNj7vxE?t=9m5s

// * passing value by pointer (move)

#include <iostream>
#include <thread>

class Fctor {
public:
 	void operator()(std::string msg) {		// (1) same as by passing by value
				// but in (2), move is used -> only a pointer is changed, no values are copied
		std::cout << "t1 says: " << msg << std::endl;
		msg = "this string is changed by a reference";
	}
};

int main() {
	std::string s = "'std::endl' is sometimes affected by race condition";
	
	std::cout << "max possible parralel threads on this machine: " << std::thread::hardware_concurrency() << std::endl;
	
	std::cout << "parent thread id: " << std::this_thread::get_id() << std::endl;

	std::thread t1((Fctor()), std::move(s));	// (2) move function is used
		// this moves s from the main thread to the child thread;
		// this is save (unlike by reference with data condition
		// this is fast (unlike by value, which copies everything
	
	std::cout << "child thread id: " << t1.get_id() << std::endl;
	
	// i.e. thread objects can only be moved an can not be copied
	
// 	std::thread t2 = t1;	// compile error; thread can not be copied
	std::thread t2 = std::move(t1);		// moving is allowed
	
	t2.join();
// 	t1.join();				// runtime error. t1 is now empty
	if (t1.joinable())		// no runtime error because check
		t1.join();
	
	std::cout << "main ended" << std::endl;
}

