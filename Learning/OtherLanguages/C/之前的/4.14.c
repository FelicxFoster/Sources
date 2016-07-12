#include <stdio.h>
#include <math.h>

void main()
{
    float a, b, c, s, area;
    printf("请输入三角形的三边长：\n");
    scanf("%f %f %f", &a, &b, &c);
    s = (a+b+c) / 2;
    area = sqrt(s*(s-a)*(s-b)*(s-c));
    printf("该三角形的面积为:%.2f", area);
}
