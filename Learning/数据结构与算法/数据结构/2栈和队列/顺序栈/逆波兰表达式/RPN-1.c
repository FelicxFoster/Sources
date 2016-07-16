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
        while(isdigit(c) || '.' == c) //如果输入数字 直接打印
        {
            printf("%c", c);          //对于连续输入的数字 不加空格
            scanf("%c", &c);
            if(!isdigit(c) && c!='.')
                printf(" ");
        }



        if(')' == c)    //如果是 ) Pop并打印 直到(
        {
            Pop(&s, &e);
            while(e != '(')
            {
                printf("%c ", e);
                Pop(&s, &e);
            }
        }

        else if('+' == c || '-' == c)  //如果 + -
        {
            if(!StackLen(s))    //空栈 直接Push
            {
                Push(&s, c);
            }
            else               //非空
            {
                do
                {
                    Pop(&s, &e);  //取出栈顶元素
                    if('(' == e)  //如果取出的是(
                    {
                        Push(&s, e);  //则再把(放回去 结束循环
                    }
                    else
                    {
                        printf("%c ", e); //并打印栈顶元素（除了'('）
                    }
                }while( StackLen(s) && '(' != e);  //!!关键  退出条件：栈空 || e == '('
                Push(&s, c);  //这时候可以把吃屎的+-放进去了
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
