#include <iostream>

void swap(int *x, int *y);  //!传址

int main()
{
    int a=3, b=5;

    std::cout << "a = " << a << " b = " << b << "\n";

    swap(&a, &b);

    std::cout << "a = " << a << " b = " << b << "\n";
}

void swap(int *x, int *y)
{
    *x ^= *y;    //!xor     x = x ^ y
    *y ^= *x;    //!        y = y ^ x = y ^ (x^y) = x
    *x ^= *y;    //!        x = x ^ y = (x^y) ^ y = (x^y) ^ x =y

    std::cout << "a = " << *x << " b = " << *y << "\n";
}
