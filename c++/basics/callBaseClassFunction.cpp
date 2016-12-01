# http://stackoverflow.com/questions/357307/how-to-call-a-parent-class-function-from-derived-class-function


class left {
public:
    void foo();
};

class right {
public:
    void foo();
};

class bottom : public left, public right {
public:
    void foo()
    {
        //base::foo();// ambiguous
        left::foo();
        right::foo();
    }
};
