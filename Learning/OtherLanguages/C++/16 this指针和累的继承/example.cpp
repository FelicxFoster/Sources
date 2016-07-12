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
    std::cout << "������๹����......\n";
    std::cout << "���ڻ��๹������߸���ĳ��......\n\n";
}

BaseClass::~BaseClass()
{
    std::cout << "�������������......\n";
    std::cout << "���ڻ�����������߸���ĳ��......\n\n";
}

void BaseClass::dosomething()
{
    std::cout << "�Ҹ���ĳЩ��......\n\n";
}

SubClass::SubClass()
{
    std::cout << "�������๹����......\n";
    std::cout << "�������๹������߸���ĳЩ��......\n\n";
}

SubClass::~SubClass()
{
    std::cout << "��������������......\n";
    std::cout << "����������������߸���ĳЩ��......\n\n";
}


int main()
{
    SubClass sb;

    sb.dosomething();

    std::cout << "OK!\n\n";

    return 0;
}
