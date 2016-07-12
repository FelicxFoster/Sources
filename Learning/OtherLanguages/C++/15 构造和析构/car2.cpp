#include <iostream>
#include <windows.h>
#define FULL_GAS 85

class Car
{
public:
    std::string color;
    std::string engine;
    unsigned int gas_tank;
    unsigned int wheel;

    Car(void);   //!声明构造器
    void setColor(std::string col);
    void setEngine(std::string eng);
    void setWheel(unsigned int whe);
    void fillTank(unsigned int liter);
    int running(void);
    void warning(void);

};

Car::Car(void)
{
    color = "White";
    engine = "V8";
    wheel = 4;
    gas_tank = FULL_GAS;

}

void Car::setColor(std::string col)
{
    color = col;
}

void Car::setEngine(std::string eng)
{
    engine = eng;
}

void Car::setWheel(unsigned int whe)
{
    wheel = whe;
}

void Car::fillTank(unsigned int liter)
{
    if( gas_tank + liter >= FULL_GAS )
    {
        gas_tank = FULL_GAS;
    }
    else
    {
        gas_tank += liter;
    }
}

int Car::running(void)
{
    char i;

    std::cout << "\nI am running^_^\n";
    gas_tank--;
    std::cout << "当前还剩" << 100*gas_tank/FULL_GAS <<"% 油量!\n";

    if( gas_tank < 10 )
    {
        std::cout << "请问是否需要加油再继续行驶？(Y/N)";
        std::cin >> i;
        if( 'Y' == i || 'y' == i )
        {
            fillTank(FULL_GAS);
        }

        if( gas_tank == 0 )
        {
            std::cout << "\n实在是跑不动了......T_T\n";
            return 1;
        }
    }

    return 0;
}

void Car::warning(void)
{
    std::cout << "\nWarning!! 还剩" << 100*gas_tank/FULL_GAS <<"% 油量！\n";
}

int main()
{
    Car mycar;

    while( !mycar.running() )
    {
        ;
    }

    return 0;
}
