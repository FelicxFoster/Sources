#include <iostream>
#include <string>
#include <stdlib.h>

class Rational
{
public:
    Rational(int num, int denom);

    Rational operator+(Rational rhs);
    Rational operator-(Rational rhs);
    Rational operator*(Rational rhs);
    Rational operator/(Rational rhs);

    void print();

private:
    void normalize();

    int numberator;
    int denominator;
};

Rational::Rational(int num, int denom)
{
    numberator = num;
    denominator = denom;

    normalize();
}

void Rational::normalize()
{
    //
    if( denominator < 0 )
    {
        numberator = -numberator;
        denominator = -denominator;
    }

    //欧几里得算法(辗转相除法)
    int a = abs(numberator);
    int b = abs(denominator);

    while( b > 0 )  //求出最大公约数a
    {
        int t = a % b;
        a = b;
        b = t;
    }

    numberator /= a;
    denominator /= a;
}

// +
Rational Rational::operator+(Rational rhs)
{
    int a = numberator;
    int b = denominator;
    int c = rhs.numberator;
    int d = rhs.denominator;

    return Rational(a*d+c*b, b*d);
}

// -
Rational Rational::operator-(Rational rhs)
{
    rhs.numberator = -rhs.numberator;
    return operator+(rhs);
}

// *
Rational Rational::operator*(Rational rhs)
{
    return Rational(rhs.numberator*numberator, rhs.denominator*denominator);
}

// /
Rational Rational::operator/(Rational rhs)
{
    int t = rhs.numberator;
    rhs.numberator = rhs.denominator;
    rhs.denominator = t;

    return operator*(rhs);
}

void Rational::print()
{
    if( numberator % denominator == 0 )
    {
        std::cout << numberator / denominator;
    }
    else
    {
        std::cout << numberator << "/" << denominator;
    }
}


int main()
{
    Rational f1(2,16);
    Rational f2(7,8);

    Rational res = f1 + f2;
    f1.print();
    std::cout << " + ";
    f2.print();
    std::cout << " = ";
    res.print();
    std::cout << "\n";


    res = f1 - f2;
    f1.print();
    std::cout << " - ";
    f2.print();
    std::cout << " = ";
    res.print();
    std::cout << "\n";

    res = f1 * f2;
    f1.print();
    std::cout << " * ";
    f2.print();
    std::cout << " = ";
    res.print();
    std::cout << "\n";

    res = f1 / f2;
    f1.print();
    std::cout << " / ";
    f2.print();
    std::cout << " = ";
    res.print();
    std::cout << "\n";


    return 0;
}
