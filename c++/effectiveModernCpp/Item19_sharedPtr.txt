// ITEM 19		Use std::shared_ptr for shared-ownership resource management.
// ////////////////////////////////////////////////////////////////////////////

// summary -------------------------------------------------------------------
// * similar to std::unique_ptr, but multiple owner are possible
// * object is destroyed when all owners are destroyed or point to a different object (reference count == 0)
// * std::shared_ptrs are twice the size of a raw pointer
// * memory for the reference count must be dynamically allocated
// * increments and decrements of the reference count must be atomic ( --> slower )
// * custom deleter can be used
// * std::shared_ptr object are two pointers in size, but the control blocks are larger
// * if the same raw pointer is passed multiple times to the constructor of std::shared_ptr, undefined behaviour occurs
// * dereferencing a std::shared_ptr is no more expensive than dereferencing a raw pointer
// * std::shared_ptrs can't be used to point to arrays, but std::unique_ptr can be used


// memory ---------------------------------------------------------------------
// * a std::shared_ptr object is two pointers in size
// * the size is independent of the custom deleter but the size of the control block may differ
// * for every object (not for every std::shared_ptr) a control block with counter and additional information, like custom deleter, exists
// * the control block is typically only a few words in size, although custom deleters and allocators may make it larger
// * if the std::shared_ptr is created by std::make_shared, the control block is only about three words in size, and its allocation is essentially free
// * situation when a new control block is manufactured:
//		- std::make_shared is used
//		- ownership of a std::unique_ptr is moved to a std::shared_ptr
//		- std::shared_ptr is called with a raw pointer. Multiple control blocks can be created with a single raw pointer --> undefined behaviour


// custom deleter -------------------------------------------------------------
// * the standard deleter uses 'delete' on the object
// * like std::unique_ptr std::shared_pointer can be used with a custom deleter
// * unlike std::unique_ptr the TYPE of the deleter is not part of the type of the std::shared_ptr
auto customDeleter = [](A* object) {
	std::cout << "Object '" << object->name << "' deleted with custom deleter" << std::endl;
	delete object;
};
auto customDeleter2 = [](A* object) {
	std::cout << "Object '" << object->name << "' deleted with custom deleter2" << std::endl;
	delete object;
};

// assign deleter to unique_ptr
auto ptr1 = new A( name );	// raw pointer
auto ptr2 = new A( name );
std::shared_ptr<A> ptrName1(ptr1, customDeleter);
std::shared_ptr<A> ptrName2(ptr2, customDeleter2);	// same type of std::shared_ptr, but different deleter
std::vector<std::shared_ptr<A>> vpw{ ptrName1, ptrName2 };	// possible because same type
// std::unique_ptr<A, decltype(customDeleter)> ptrName(ptr1, customDeleter);	// type of std::unique_ptr


// using 'this' as constructor argument for std::shared_ptr -------------------
// the problem is following situation:
std::vector<std::shared_ptr<Widget>> processedWidgets;		// vector which manages processed widgets

class Widget {
public:
	...
	void process();
};

void Widget::process()
{
	...
	processedWidgets.emplace_back(this);	// WARNING. this (a raw pointer!) is passed to the std::shared_ptr constructor
}
// if 'process()' is called multiple times, the constructor of std::shared_ptr is called multiple times with the same raw pointer (this)

// inherit your class from std::enable_shared_from_this to avoid this problem:
class Widget: public std::enable_shared_from_this<Widget> {
public:
	...
	void process();
};

void Widget::process()
{
	...
	processedWidgets.emplace_back(shared_from_this());	// the control block is only constructed once
}


// good design practice -------------------------------------------------------
// * never create multiple std::shared_ptr with a single raw pointer
// * try to avoid passing raw pointers to std::shared_ptr. Use std::make_shared instead. But if a custom deleter is used, std::shared_ptr has to be used
// * try to pass the result of 'new Widget' directly to the constructor instead of using a raw pointer
std::shared_ptr<A> ptrName1(new A, customDeleter);
std::shared_ptr<A> ptrName2(ptrName1);
// * if passing 'this' to constructor, use 'std::enable_shared_from_this'
