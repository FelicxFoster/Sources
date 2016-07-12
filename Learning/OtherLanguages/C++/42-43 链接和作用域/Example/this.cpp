#include "header.h"
#include <iostream>

extern unsigned short thatNum;  //外链接
static bool printMe = false;    //内链接

int main()
{
    unsigned short thisNum = 10;

    std::cout << thisNum << "! = " << returnFactorial(thisNum) << "\n\n";

    std::cout << thatNum << "! = " << returnFactorial(thatNum) << "\n\n";  //!extern从别的地方拉过来的

    std::cout << headerNum << "! = " << returnFactorial(headerNum) << "\n\n";

    if( printMe )
    {
        std::cout << "Balabala...\n\n";
    }

    return 0;
}
