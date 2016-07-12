//Rational.h
//Created by SQD
//���ͷ�ļ���������������(Rational class)
//����߶�����������������������أ���ʵ�ַ�������
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
    void normalize();   //�򻯷���

    int numberator;
    int denominator;

    friend std::ostream& operator<<(std::ostream& os, Rational f);  //!new
};

#endif // RATIONAL_H
