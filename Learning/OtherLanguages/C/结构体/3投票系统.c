#include <stdio.h>
#include <string.h>


void main()
{
    struct vote
    {
        char name[20];
        int count;
    }man[] = {{"С����",0}, {"�Ծ���",0},{"�ɵ���",0},{"����",0},{"ӣ��",0},{"��������",0}};

    char c[20];
    int i, j, win_index=0;

    printf("��ѡ��������\n");
    for(i=0; i<6; i++)
    {
        printf("%-8s", man[i].name);
    }
    printf("\n\n");

    for(i=0; i<10; i++)   //��Ʊ��
    {
        printf("��%2dƱ��������֧�ֵĺ�ѡ�˵�����: ", i+1);
        scanf("%s", c);

        j = 0;
        for(j=0; j<6; j++)  //ÿ�α���
        {
            if(strcmp(c,man[j].name) == 0)  //���ֺ�����һ������ ��Ӧ��count��1
            {
                man[j].count++;
            }
        }
    }

    for(i=0; i<6; i++)
    {
        printf("\n%s�ĵ�Ʊ����%d", man[i].name, man[i].count);
        if(man[i].count > man[win_index].count)
        {
            win_index = i;
        }
    }
    printf("\n");

    printf("\n����ͶƱ�Ļ�ʤ���ǣ�%s\n", man[win_index].name);

    getch();
}
