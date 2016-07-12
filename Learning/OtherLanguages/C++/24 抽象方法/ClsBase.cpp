#include <iostream>

class ClsBase
{
public:
    ClsBase(){};

    virtual ~ClsBase(){};//!如果把virtual去掉，则子类的析构函数将不会被调用

    virtual void doSomething()
    {
        std::cout << "Do something in class ClsBase!\n";
    }
};

class ClsDrived: public ClsBase
{
public:
    ClsDrived(){};

    ~ClsDrived()
    {
        std::cout << "Output from the destructor of class ClsDrived!\n";
    }

    void doSomething()
    {
        std::cout << "Do something in class ClsDrived!\n";
    }
};



int main()
{
    ClsBase *pTest = new ClsDrived;

    pTest->doSomething();

    delete pTest;

    return 0;
}
