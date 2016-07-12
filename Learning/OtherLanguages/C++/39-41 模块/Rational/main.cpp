#include <iostream>
#include "rational.h"

//using namespace myPath; //²»ÍÆ¼ö½´×Ï

int main()
{
    myPath::Rational f1(2,16);
    myPath::Rational f2(7,8);

    std::cout << f1 << " + " << f2 << " = " << (f1+f2) << "\n";
    std::cout << f1 << " - " << f2 << " = " << (f1-f2) << "\n";
    std::cout << f1 << " * " << f2 << " = " << (f1*f2) << "\n";
    std::cout << f1 << " / " << f2 << " = " << (f1/f2) << "\n";


    return 0;
}
