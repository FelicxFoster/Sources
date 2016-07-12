#include <stdio.h>

void main()
{
    char sex;
    char boy;

    printf("Input sex(F/M):");
    gets(&sex);
    printf("%c\n", sex);

    printf("Input sex(F/M):");
    gets(&boy);
    //printf("%c\n", sex);

    printf("Input sex(Female/Male):");
    scanf("%c", &sex);
    printf("%c\n", sex);

    printf("Input sex(Female/Male):");
    scanf("%s", &sex);
    printf("%c\n", sex);
}
