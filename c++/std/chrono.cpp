

// Time difference in ms
std::chrono::steady_clock::time_point m_lastSuccessfulConnection;
m_lastSuccessfulConnection = SteadyClock::now();
usleep(10e3);
auto timeDifference = SteadyClock::now() - m_lastSuccessfulConnection;
float f = std::chrono::duration_cast<std::chrono::milliseconds>(timeDifference).count() / 1000.0;
std::cout << "time difference = " << f << std::endl;