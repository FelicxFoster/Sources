#include "header.h"
#include <iostream>

extern unsigned short thatNum;  //������
static bool printMe = false;    //������

int main()
{
    unsigned short thisNum = 10;

    std::cout << thisNum << "! = " << returnFactorial(thisNum) << "\n\n";

    std::cout << thatNum << "! = " << returnFactorial(thatNum) << "\n\n";  //!extern�ӱ�ĵط���������

    std::cout << headerNum << "! = " << returnFactorial(headerNum) << "\n\n";

    if( printMe )
    {
        std::cout << "Balabala...\n\n";
    }

    return 0;
}
