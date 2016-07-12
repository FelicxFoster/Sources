#include <iostream>

class ClsBase
{
public:
    ClsBase(){};

    virtual ~ClsBase(){};//!�����virtualȥ������������������������ᱻ����

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
