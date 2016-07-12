#include <iostream>
#include <string>

class Myclass
{
public:
    Myclass(int *p);
    ~Myclass();

    Myclass &operator=(const Myclass &rhs);//���ظ�ֵ��
    void print();
private:
    int *ptr;
};

Myclass::Myclass(int *p)
{
    ptr = p;
}

Myclass::~Myclass()
{
    delete ptr;
}

//!!ʹ����ָ��ָ��ͬ��ַ
Myclass &Myclass::operator=(const Myclass &rhs)
{
    if( this != &rhs ) //! this == a
    {
        delete ptr;

        ptr = new int;
        *ptr = *rhs.ptr;
    }
    else
    {
        std::cout << "��ֵ������Ϊͬ�����󣬲�������!\n";
    }
}

void Myclass::print()
{
    std::cout << *ptr << std::endl;
}

int main()
{
    Myclass obj1(new int(1));
    Myclass obj2(new int(2));

    obj1.print();
    obj2.print();

    obj2 = obj1;

    obj1.print();
    obj2.print();

    return 0;
}
