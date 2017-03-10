//move is a static_cast to an rvalue reference type



#include <vector>
#include <iostream>
#include <iomanip>
 
int main()
{
    std::vector<std::string> numbers;
 
    numbers.push_back("abc");
    std::string s = "def";
    numbers.push_back(std::move(s));
 
    std::cout << "vector holds: ";
    for (auto&& i : numbers) std::cout << std::quoted(i) << ' ';
		//vector holds: "abc" "def" 
    std::cout << "\nMoved-from string holds " << std::quoted(s) << '\n';
		//Moved-from string holds ""
}