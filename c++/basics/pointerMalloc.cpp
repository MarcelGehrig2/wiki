


// language: c
// ////////////////////////////////////////////////////////////////////////////

// malloc (returns void pointer)
void *p = malloc( 10 * sizeof(int) );       // allocate 10*4 (or 2) bytes on heap; memory is not initialized -> garbage
std::cout << p << std::endl;                //address
*p = 2;             //compile error; compiler doesn't know that the allocated memory stores integers

int *p = (int*)malloc( 10 * sizeof(int) );  // typecast void pointer to int pointer
*p = 2;             // allowed
std::cout << p[0] << std::endl;            //address 200
std::cout << p[1] << std::endl;            //address 204    (if sizeof(int) == 4)
std::cout << p[2] << std::endl;            //address 208    (if sizeof(int) == 4)


// clear allocated memory
free(p);


// calloc, malloc with initialization to 0
void *p2 = calloc(10, sizeof(int) );         // allocate 10*4 (or 2) bytes on heap; memory is initialzed to 0



// realloc
void *p3 = realloc( p2, 10 * sizeof(int) );  // pointer to already allocated memory, size of the new block
    // if the new block is larger than the existing one:  machine extend old block if possible, otherwise it creates an entirely new block and copies existing data
    // if the new block is smaller than the existing one: the machine reduces the size of the existing one




// language: cpp
// ////////////////////////////////////////////////////////////////////////////
// new;
// delete;

#include <stdio.h>
#include <stdlib.h>
int main() {
    int *p;
    p = new int;
    *p = 10;
    delete p;
    p = new int[20];    // memory alloc for 20 ints
    delete[] p;         // delete hole "array"
}}
new;
delete;
