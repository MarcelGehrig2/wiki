#ifndef RS232CANBMS_THREAD_HPP_
#define RS232CANBMS_THREAD_HPP_

#include <thread>
#include <functional>
#include <string>


class Thread {
public:
	Thread();
	virtual ~Thread();
	
	virtual std::string getId() const;
	virtual void join();
	
protected:
	Thread(std::function<void ()> t);
	
	virtual void run();
	
	std::thread t;
};

#endif // RS232CANBMS_THREAD_HPP_
