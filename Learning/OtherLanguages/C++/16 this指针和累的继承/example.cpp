#include <iostream>
#include <string>

class BaseClass
{
public:
    BaseClass();
    ~BaseClass();

    void dosomething();
};

class SubClass: public BaseClass
{
public:
    SubClass();
    ~SubClass();
};

BaseClass::BaseClass()
{
    std::cout << "进入基类构造器......\n";
    std::cout << "我在基类构造器里边干了某事......\n\n";
}

BaseClass::~BaseClass()
{
    std::cout << "进入基类析构器......\n";
    std::cout << "我在基类析构器里边干了某事......\n\n";
}

void BaseClass::dosomething()
{
    std::cout << "我干了某些事......\n\n";
}

SubClass::SubClass()
{
    std::cout << "进入子类构造器......\n";
    std::cout << "我在子类构造器里边干了某些事......\n\n";
}

SubClass::~SubClass()
{
    std::cout << "进入子类析构器......\n";
    std::cout << "我在子类析构器里边干了某些事......\n\n";
}


int main()
{
    SubClass sb;

    sb.dosomething();

    std::cout << "OK!\n\n";

    return 0;
}
