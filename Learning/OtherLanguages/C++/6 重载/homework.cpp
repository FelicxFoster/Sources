/*******************
对calc()函数进行重载
一个参数，求平方
两个参数，求乘积
三个参数，求和
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

    cout << "按任意键结束程序^_^"<<"\n\n";
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
