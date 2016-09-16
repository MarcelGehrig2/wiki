// initialisation List
// ///////////////////

// https://www.youtube.com/watch?v=zW_lpWKpFGU


#ifndef PERSON_H_
#define PERSON_H_

#include <iostream>

class Person {
private:
    string name;
    int age;

public:
    Person(): name("unnamed"), age(0) {};
    Person(string name, int age): name(name), age(age) {;

    string toString();
};


#endif
