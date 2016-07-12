#include <iostream>
#include <windows.h>
#define FULL_GAS 85

class Car
{
public:
    std::string color;
    std::string engine;
    int gas_tank;
    unsigned int wheel;

    void setColor(std::string col);
    void setEngine(std::string eng);
    void setWheel(unsigned int whe);
    void fillTank(int liter);
    int running(void);
    void warning(void);

};

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

void Car::fillTank(int liter)
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
    std::cout << "\nI am running^_^\n";
    gas_tank--;
    std::cout << "��ǰ��ʣ" << 100*gas_tank/FULL_GAS <<"% ����!\n";

    return gas_tank;
}

void Car::warning(void)
{
    std::cout << "\nWarning!! ��ʣ" << 100*gas_tank/FULL_GAS <<"% ������\n";
}

int main()
{
    char i;

    Car mycar;

    mycar.setColor("Black");
    mycar.setEngine("V8");
    mycar.setWheel(4);

    mycar.gas_tank = FULL_GAS;

    while( int gas = mycar.running() )
    {
        if( gas < 10 )
        {
            mycar.warning();
            std::cout << "�����Ƿ���Ҫ�����ټ�����ʻ��(Y/N)";
            std::cin >> i;
            if( 'Y' == i || 'y' == i )
            {
                mycar.fillTank(FULL_GAS);
            }
        }

    }

    std::cout << "\nʵ�����ܲ�����......T_T\n";


    return 0;
}
