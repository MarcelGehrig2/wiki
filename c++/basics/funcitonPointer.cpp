// https://www.youtube.com/watch?v=ynYtgGUNelE
// https://www.youtube.com/watch?v=sxTFSDAZM8s



// ////////////////////////////////////////////////////////////////////////////
#include <iostream>

void print(int i) {
    std::cout << "hello " << i << std::endl;
}

void foo(void (*ptr)(int)) {    // function pointer as argument
    ptr(10);                    // call-back function that "ptr" points to
}

int main() {
    void (*p)(int) = print;		// creats and defines function pointer p
    foo(p);
	
}
