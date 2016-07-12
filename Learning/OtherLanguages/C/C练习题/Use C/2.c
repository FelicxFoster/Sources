#include <stdio.h>

void main()
{
    double I, bonus1, bonus2, bonus4, bonus6, bonus10, bonus;
    printf("Input I:");
    scanf("%lf", &I);
    bonus1 = 10 * 0.1;
    bonus2 = bonus1 + (20-10)*0.075;
    bonus4 = bonus2 + (40-20)*0.05;
    bonus6 = bonus4 + (60-40)*0.03;
    bonus10 = bonus6 + (100-40)*0.015;
    if(I<=10)
    {
        bonus = I * 0.1;
    }
    else if(I>10 && I<20)
    {
        bonus = bonus1 + (I-10)*0.075;
    }
    else if(I>20 && I<40)
    {
        bonus = bonus2 + (I-20)*0.05;
    }
    else if(I>40 && I<=60)
    {
        bonus = bonus4 + (I-40)*0.03;
    }
    else if(I>60 && I<=100)
    {
        bonus = bonus6 + (I-60)*0.015;
    }
    else
    {
        bonus = bonus10 + (I-100)*0.01;
    }
    printf("bonus=%.1lf", bonus*10000);
}
