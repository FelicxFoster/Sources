#include <stdio.h>
#include <stdlib.h>

#define STACK_INIT_SIZE    20
#define STACK_INCREACEMENT 10

typedef char ElemType;

typedef struct
{
    ElemType *base;
    ElemType *top;
    int stackSize;
}sqStack;

void InitStack(sqStack *s)
{
    s->base = (ElemType *)malloc(STACK_INIT_SIZE * sizeof(ElemType));
    if(!s->base)
        exit(0);

    s->top = s->base;
    s->stackSize = STACK_INIT_SIZE;
}

void Push(sqStack *s, ElemType e)
{
    if(s->top - s->base >= s->stackSize)
    {
        s->base = (ElemType *)realloc(s->base, (s->stackSize+STACK_INCREACEMENT) * sizeof(ElemType));
        if(!s->base)
            exit(0);
    }

    *(s->top++) = e;
}

void Pop(sqStack *s, ElemType *e)
{
    if(s->top == s->base)
        return;
    *e = *(--s->top);
}

int StackLen(sqStack s)
{
    return s.top - s.base;
}


int main()
{
    sqStack s;

    char c, e;

    InitStack(&s);

    printf("Please input a normal expressioin('#' to stop):\n");
    scanf("%c", &c);
    while(c != '#')
    {
        while(isdigit(c) || '.' == c) //����������� ֱ�Ӵ�ӡ
        {
            printf("%c", c);          //����������������� ���ӿո�
            scanf("%c", &c);
            if(!isdigit(c) && c!='.')
                printf(" ");
        }



        if(')' == c)    //����� ) Pop����ӡ ֱ��(
        {
            Pop(&s, &e);
            while(e != '(')
            {
                printf("%c ", e);
                Pop(&s, &e);
            }
        }

        else if('+' == c || '-' == c)  //��� + -
        {
            if(!StackLen(s))    //��ջ ֱ��Push
            {
                Push(&s, c);
            }
            else               //�ǿ�
            {
                do
                {
                    Pop(&s, &e);  //ȡ��ջ��Ԫ��
                    if('(' == e)  //���ȡ������(
                    {
                        Push(&s, e);  //���ٰ�(�Ż�ȥ ����ѭ��
                    }
                    else
                    {
                        printf("%c ", e); //����ӡջ��Ԫ�أ�����'('��
                    }
                }while( StackLen(s) && '(' != e);  //!!�ؼ�  �˳�������ջ�� || e == '('
                Push(&s, c);  //��ʱ����԰ѳ�ʺ��+-�Ž�ȥ��
            }
        }
        else if('*' == c || '/' == c || '(' == c)
        {
            Push(&s, c);
        }

        else if('#' == c)
            break;

        else
        {
            printf("\nWarning:Error input!\n");
            return -1;
        }
        scanf("%c", &c);
    }

    while(StackLen(s))
    {
        Pop(&s, &e);
        printf("%c ", e);
    }

    printf("\n");
    system("pause");
    return 0;
}
