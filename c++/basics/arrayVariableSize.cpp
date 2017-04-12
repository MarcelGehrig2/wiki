// http://stackoverflow.com/questions/6159968/declaring-array-of-int

void doSomething()
{
    int x[10];					// fixed size
    int *z  = new int[10];		// variable size
    //Do something interesting

    delete []z;					// DO NOT FORGET
}

