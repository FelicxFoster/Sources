/*******************
��calc()������������
һ����������ƽ��
������������˻�
�������������
**************/

#include <iostream>

using namespace std;

double calc(double a);
double calc(double a, double b);
double calc(double a, double b, double c);


int main()
{
    cout << "3^2 = " << calc(3) << "\n";
    cout << "3x7 = " << calc(3,7) << "\n";
    cout << "3+4+5 = " << calc(3,4,5) << "\n\n";

    cout << "���������������^_^"<<"\n\n";
    cin.get();
    return 0;
}

double calc(double a)
{
    return a*a;
}

double calc(double a, double b)
{
    return a * b;
}

double calc(double a, double b, double c)
{
    return a + b + c;
}
