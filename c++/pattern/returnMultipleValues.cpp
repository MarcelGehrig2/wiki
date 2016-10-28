// http://www.cppsamples.com/common-tasks/return-multiple-values.html

#include <tuple>
std::tuple<int, bool, float> foo()
{
	return std::make_tuple(128, true, 1.5f);
}

int main()
{
    // Variant 1: tuple
	std::tuple<int, bool, float> result = foo();
	int value = std::get<0>(result);

    // Variant 2: std::tie
	int obj1;
	bool obj2;
	float obj3;
	std::tie(obj1, obj2, obj3) = foo();
}