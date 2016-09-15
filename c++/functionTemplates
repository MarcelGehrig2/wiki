// function templates
// //////////////////

// https://www.youtube.com/watch?v=9PVRYDrnm9A


// * one function is suited for different types or classes (classes are the same as types)
// * use operator (i.e. "<" or ">") in user defined class

//////////////////////////////////////////////////////////////////////////////////////////////////

template<typename t>
t Min(t a, t b) {
    if(a < b) return a;
    else return b;
    }

int main () {
    int a = 10;
    int b = 20;
    float c = 30;
    float d = 40;

    cout<<Min(a, b)<<endl;  //automatically choose int as type
    cout<<Min(b, c)<<endl;  //syntax error; not clear if int or float
    cout<<Min<double>(b, c)<<endl;  //type is specified; b will be automatically casted to float


    return 0;
}


//////////////////////////////////////////////////////////////////////////////////////////////////

// * passe variables should be manipulated -> reference
// * typename can be used for new variables

template<typename t>
t Swap(t% a, t% b) {        //variables passed by reference! otherwise they can't be manipulated
    t temp;
    temp = a;
    a = b;
    b = temp;
    }

int main () {
    int a = 10;
    int b = 20;

    Swap(a, b);


    return 0;
}


//////////////////////////////////////////////////////////////////////////////////////////////////

// * one function is suited for different classes (classes are the same as types)
// * use operator (i.e. "<" or ">") in user defined class

#include <iostream>
using namespace std;

template<typename t>
//template<class t>     //identical to "template<typename t>"
t Min(t a, t b) {
    if(a < b) return a; //2.) a < b is used with class Point
    else return b;
    }

class Point {
    public:
        double x, y;
        Point(double x, double y) {
            this->x = x;
            this->y = y;
        }

        bool operator < (Point& b) {    //3.) declaration of the operator "<" with class Point
            double dist1 = sqrt(x * x) + y * y));
            double dist2 = sqrt(b.x * b.x) + b.y * b.y));

            return dist1 < dist2;
        }
};

int main() {
    Point p1(12, 31.2);
    Point p2(234, 294,3);

    Point smaller = Min(p1, p2);    //1.) Min(x,y) is used with class Point

    cout<<smaller.x<<"  "<<smaller.y<<endl; //12  31.2

    return 0;
}

//////////////////////////////////////////////////////////////////////////////////////////////////

// * 2 or more different data types
template<typename t1, typename t2>
bool LessThan(t1 a, t2 b) {
    return a < b;
    }

int main () {
    int a = 10;
    float b = 20;

    cout<<"a is less than b: "<<LessThan(a, b)<<endl; 

    return 0;
}
