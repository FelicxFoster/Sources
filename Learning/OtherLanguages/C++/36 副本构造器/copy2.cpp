#include <iostream>
#include <string>

class Myclass
{
public:
    Myclass(int *p);
    Myclass(const Myclass &rhs);
    ~Myclass();

    Myclass &operator=(const Myclass &rhs);//���ظ�ֵ��
    void print();

private:
    int *ptr;
};

Myclass::Myclass(int *p)
{
    std::cout << "������������\n";
    ptr = p;
    std::cout << "�뿪��������\n";
}

//!
Myclass::Myclass(const Myclass &rhs)
{
    std::cout << "���븱��������\n";
    *this = rhs;       //!���õ������ظ�ֵ��
    std::cout << "�뿪����������\n";
}

Myclass::~Myclass()
{
    std::cout << "����������\n";
    delete ptr;
    std::cout << "�뿪������\n";
}

//!!ʹ����ָ��ָ��ͬ��ַ
Myclass &Myclass::operator=(const Myclass &rhs)
{
    std::cout << "���븳ֵ�������\n";
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

    std::cout << "�뿪��ֵ�������\n";

    return *this;
}

void Myclass::print()
{
    std::cout << *ptr << std::endl;
}

int main()
{
    Myclass obj1(new int(1));
    Myclass obj2(new int(2));
    obj2 = obj1;
    obj1.print();
    obj2.print();

    std::cout << "-----------------------------\n";

    Myclass obj3(new int(3));
    Myclass obj4 = obj3;
    obj1.print();
    obj2.print();

    std::cout << "-----------------------------\n";

    Myclass obj5(new int(5));
    obj5 = obj5;
    obj5.print();



    return 0;
}
