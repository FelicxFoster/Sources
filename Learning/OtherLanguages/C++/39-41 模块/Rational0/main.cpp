#include <iostream>
#include "rational.h"

int main()
{
    Rational f1(2,16);
    Rational f2(7,8);

    std::cout << f1 << " + " << f2 << " = " << (f1+f2) << "\n";
    std::cout << f1 << " - " << f2 << " = " << (f1-f2) << "\n";
    std::cout << f1 << " * " << f2 << " = " << (f1*f2) << "\n";
    std::cout << f1 << " / " << f2 << " = " << (f1/f2) << "\n";


    return 0;
}
