// 01 https://www.youtube.com/watch?v=LL8wkskDlbs&list=PL5jc9xFGsL8E12so1wlMS0r0hTQoJL74M&index=1
// 02 https://www.youtube.com/watch?v=LL8wkskDlbs&list=PL5jc9xFGsL8E12so1wlMS0r0hTQoJL74M

// * basics of creating threads

#include <iostream>
#include <thread>

void function1() {
	std::cout << "function1 started" << std::endl;
	std::this_thread::sleep_for(std::chrono::seconds(60));
	std::cout << "function1 ended" << std::endl;
}

int main() {
	std::thread t1(function1);	// t1 starts running
// 	t1.join();					// main thread waits until t1 finished
//	t1.detach();				// t1 will run freely on its own -> t1 becomes a daemon process
	
	try {
		// ...
	} catch (...) {				// catch every exception
		if (t1.joinable())		// otherwise crash
			t1.join();
		throw;					// rethrow exception
	}
		
	if (t1.joinable())			// otherwise crash
		t1.join();
	
	std::this_thread::sleep_for(std::chrono::seconds(15));
	
	std::cout << "main ended" << std::endl;
}








//