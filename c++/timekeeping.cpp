


auto start = std::chrono::steady_clock::now();
//stuff to measure
auto stop = std::chrono::steady_clock::now();
std::chrono::duration<int, std::nano> duration = stop - start;	//nsec allways int.
//std::chrono::duration<double, std::milli> duration = stop - start;	//cast to msec
std::cout << "Duration: " << duration.count() << " nsec" << std::endl;























typedef std::chrono::steady_clock clock;


auto start = clock::now();
//stuff to measure
auto stop = clock::now();
std::chrono::duration<int, std::nano> duration = stop - start;	//nsec allways int.
//std::chrono::duration<double, std::milli> duration = stop - start;	//cast to msec
std::cout << "Duration: " << duration.count() << " nsec" << std::endl;
