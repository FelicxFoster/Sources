
#include <iostream>

void swap(int &x, int &y);  //!传引用

int main()
{
    int a=3, b=5;

    std::cout << "a = " << a << " b = " << b << "\n";

    swap(a, b);

    std::cout << "a = " << a << " b = " << b << "\n";
}

void swap(int &x, int &y)
{
    int temp;
    temp = x;
    x = y;
    y = temp;

    std::cout << "a = " << x << " b = " << y << "\n";
}
