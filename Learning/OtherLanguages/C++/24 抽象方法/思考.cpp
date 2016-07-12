#include <iostream>

class Animal
{
public:
    void sleep()
    {
        std::cout << "Animal sleep" << std::endl;
    }
    void breathe()
    {
        std::cout << "Animal breathe" << std::endl;
    }
};

class Fish: public Animal
{
public:
    void breathe()
    {
        std::cout << "Fish bubble" << std::endl;
    }
};



int main()
{
    Fish fish;
    Animal *pAn = &fish;

    pAn->breathe();

    return 0;
}
