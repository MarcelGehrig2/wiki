


Executor::Executor() :
	log('E'), period(0), mainTask(nullptr) { }

Executor::~Executor() {

}

//create instance, if no instance exist. Return instance, if one exists
Executor& Executor::instance() {
	static Executor executor;
	return executor;
}







void Executor::stop() {
	running = false;
	auto &instance = Executor::instance();
	if(instance.etherCATStack) instance.cv->notify_one();
}
