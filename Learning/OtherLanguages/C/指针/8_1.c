/*********************************
*���ַ�������ĸ˳���С�������*
*********************************/

#include <stdio.h>

void main()
{
    int i, j;
    char *temp, *name[] = {"FishC", "Dog", "Pig", "Chicken", "FishD", "Friend"};
    for(i=0; i<6; i++)
    {
        printf("%s  ", name[i]);  //��ӡ�ַ��� ��ָ�뵽\0����
    }

    printf("\n\n%c\n\n", *(name[1]+1));  //��ӡ�ַ�

    for(i=0; i<6; i++)
    {
        for(j=0; j<6-i; j++)
        {
            if(*name[j]>*name[j+1])  //ð�ݷ�����
            {
                temp = name[j];      //����ָ��
                name[j] = name[j+1];
                name[j+1] = temp;
            }
        }
    }
    for(i=0; i<6; i++)
    {
        printf("%s\n", name[i]);  //��ӡ�ַ��� ��ָ�뵽\0����
    }
}
