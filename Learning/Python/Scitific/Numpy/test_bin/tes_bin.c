#include <stdio.h>

#define Num 3

struct person
{
    char name[32];
    int age;
    float weight;
}p[Num];

void main()
{
    FILE *fp;
    int i;
    fp = fopen("test.bin", "rb");
    fread(p, sizeof(struct person), Num, fp);
    fclose(fp);

    printf("%-12s %-5s %s\n", "Name", "Age", "Weight");
    for(i=0; i<3; i++)
    {

        printf("%-12s %-5d %.1f\n", p[i].name, p[i].age, p[i].weight);
    }
    getchar();
}
