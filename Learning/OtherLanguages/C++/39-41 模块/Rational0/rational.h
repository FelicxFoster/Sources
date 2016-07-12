//Rational.h
//Created by SQD
//这个头文件声明了有理数类(Rational class)
//类里边对四则运算运算符进行了重载，以实现分数运算
#ifndef RATIONAL_H
#define RATIONAL_H


#include <iostream>

class Rational
{
public:
    Rational(int num, int denom);

    Rational operator+(Rational rhs); //rhs == right hand side
    Rational operator-(Rational rhs);
    Rational operator*(Rational rhs);
    Rational operator/(Rational rhs);

private:
    void normalize();   //简化分数

    int numberator;
    int denominator;

    friend std::ostream& operator<<(std::ostream& os, Rational f);  //!new
};

#endif // RATIONAL_H
