//ͨ�����������"+"
//ʵ�ָ����ļӷ�
//��Ԫ����

#include <iostream>

class Complex
{
public:
    //Complex();
    Complex(double r=0, double i=0);
    friend Complex operator+(Complex &c, Complex &d);  //!��"+"����
    void print();

private:
    double real;
    double imag;
};
#if(0)
Complex::Complex()
{
    real = 0;
    imag = 0;
}
#endif

Complex::Complex(double r, double i)
{
    real = r;
    imag = i;
}

#if(0)
Complex Complex::operator+(Complex &d)
{
    Complex c;

    c.real = real + d.real;
    c.imag = imag + d.imag;

    return c;
}
#endif
//!ע�⣬������Ϊ��Ԫ������������Complex�࣬��Ҫд::
Complex operator+(Complex &c, Complex &d)
{
    return Complex(c.real+d.real, c.imag+d.imag);
}

void Complex::print()
{
    std::cout << "(" << real << "," << imag << "i)\n";
}


int main()
{
    Complex c1(3,4), c2(5,-10);

    std::cout << "c1 = ";
    c1.print();
    std::cout << "c2 = ";
    c2.print();
    std::cout << "c1 + c2 = ";
    (c1+c2).print();  //!�������ص�"+"

    std::cout << 1 + 2; //!��ͨ���ò���

    return 0;
}
