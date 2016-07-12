#include <stdio.h>

void get_average(int a[]);

void main()
{
    int score[10] = {59, 99, 78, 90, 85, 88, 93, 9, 60, 77};
    get_average(score);
    getch();
}

void get_average(int a[])
{
    int i;
    double average, sum = 0;
    for(i=0; i<10; i++)
        sum += a[i];
    average = sum / 10;
    printf("avarage score = %.1lf\n", average);
}
