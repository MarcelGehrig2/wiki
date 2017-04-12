//http://en.cppreference.com/w/cpp/thread/condition_variable


#include <condition_variable>

void Sequence::run()	//runs in thread
{
	std::unique_lock<std::mutex> lk(m);
	cv.wait(lk);							//sends Sequence to sleep. Waiting for start()
	lk.unlock();
	// do stuff after wake up
}


int Sequence::startMainSequence()
{
	cv.notify_one();		//starts actionFramework() in thread
}


// *.hpp
std::mutex m;
std::condition_variable cv;
