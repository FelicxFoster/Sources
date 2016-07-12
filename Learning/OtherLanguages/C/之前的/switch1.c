#include <stdio.h>

void main()
{
    double a, b;
    char c;
    printf("Input expression:a+(-*/)b\n");
    scanf("%lf%c%lf", &a, &c, &b);
    switch(c)
    {
        case '+' : printf("%lf+%lf=%lf", a, b, a+b); break;
        case '-' : printf("%lf-%lf=%lf", a, b, a-b); break;
        case '*' : printf("%lf*%lf=%lf", a, b, a*b); break;
        case '/' : printf("%lf/%lf=%lf", a, b, a/b); break;
        default : printf("Input error!");
    }
}
