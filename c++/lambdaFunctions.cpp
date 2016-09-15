// lambda functions
// ////////////////

// https://www.youtube.com/watch?v=uk0Ytomv0wY 


// * nameless functions



// [](){};  //complete lambda function

//////////////////////////////////////////////////////////////////////////////////////////////////

#include <algorithm>
using namespace std;

int main() {

    auto sayHelloWorld = [] () {
        cout<<"Hello World!"<<endl;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////

// * pass multiple parameter
// * i out of socope

#include <algorithm>
using namespace std;

int main() {
    int i = 10;

    auto add = [] (int a, int b) -> int {    //pass 2 parameter
                                             // "-> int" is the return type; this is optional 
        return a + b;
        // return a + b + i;                 // i is out of scope!
    }

    cout<<add(190, 10)<<endl;
}


//////////////////////////////////////////////////////////////////////////////////////////////////

// * capture varialbes out of scope by VALUE and by REFERENCE

...

    int i = 10;

    auto add = [i] (int a, int b) -> int {    //capture i by VALUE
        //i = 189;                              //not possible! i is read only.
        return a + b + i;                     // i is now IN scope!
    }

    auto add2 = [&i] (int a, int b) -> int {  // i is now passed by refference
        i = 189;                                // this is now possible
        return a + b + i;
    }
    cout<<i<<endl;      //189

    auto add = [=] (int a, int b) -> int { }    //all variables, which are used in the body are added
                                                    //automatically to the capture list by VALUE

    auto add = [&] (int a, int b) -> int { }    //all variables, which are used in the body are added
                                                    //automatically to the capture list by REFERENCE

    auto add = [&, i] (int a, int b) -> int { }  // i by VALUE, the rest by REFERENCE
    auto add = [=, &i] (int a, int b) -> int { } // i by REFERENCE, the rest by VALUE
    

...


//////////////////////////////////////////////////////////////////////////////////////////////////

// * for_each example

#include <iostream>
#include <functional>
#include <vector>
#include <algorithm>

using namespace std;

int main () {
    double total = 0;
    //include 'vector' for vector
    std::vector<int> arr == { 1, 2, 3, 4, 5 };

    //include 'algorithm' for for_each
    std::for_each(begin(arr), end(arr),     // for_each passes each emelent of 'arr'

        [&](int x) {
            total +=x;
        }
    );


//////////////////////////////////////////////////////////////////////////////////////////////////

// * std::sort example

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

struct Point {
    double x, y;

    Point() {
        x = (rand() % 10000) - 5000;
        y = (rand() % 10000) - 5000;
    }

    void Print() {
        cout<<"["<<x<<", "<<y<<<"]"<<endl;
    }
};


int main () {
    int count = 100;
    vector<Point> points;
    for (int i = 0; i < count; i++) points.push_back(Point());  //'push_back' = add element at the end

    cout<<"Unsorted: "<<endl;       //print 10 unsorted points
    for/int i = 0; i < 10; i++) points[i].Print();

    std::sort(points.begin(), points.end(), //sort function useses start, end and comparison

        [](const Point& a, const Point& b) -> bool {    //lambda function for comparison operation
                    //Point is passed by REFERENCE for speed reason; const prevent manipulation
            return (a.x*a.x) + (a.y*a.y) < (b.x*b.x) + (b.y*b.y);
        }
    );  // end std::sort call
)


//////////////////////////////////////////////////////////////////////////////////////////////////

// * std::function example
// * std::funciton<void()> usfull for passing functions around
// * variable is used seamengli out of scope

#include <iostream>
#include <functional>

using namespace std;

void PerfomOperation(std::function<void()> f) {
    f();                    // 3.) x++ can be calculated, even x seams out of scope!
}

int main() {
    int x = 100;

    auto funk = [&]() {     // 1.) lamda function 'funk' defined; x captured by REFERENCE
        x++;
    };

    PerformOperation(funk); // 2.) lamda function 'funk' passed to 'PerformOperation', including reference to x;

    cout<<"X: "<<x<<endl;   // 4.) 101

    return 0;
}


