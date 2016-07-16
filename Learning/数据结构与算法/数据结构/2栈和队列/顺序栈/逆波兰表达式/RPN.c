#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#define STACK_INIT_SIZE    20
#define STACK_INCREACEMENT 10
#define MAX_BUFFER         10

typedef double ElemType;
typedef struct
{
    ElemType *base;
    ElemType *top;
    int stackSize;
}sqStack;

void InitStack(sqStack *s)  //初始化
{
    s->base = (ElemType*)malloc(STACK_INIT_SIZE * sizeof(ElemType));
    if(!s->base)
        exit(0);

    s->top = s->base;
    s->stackSize = STACK_INIT_SIZE;
}

void Push(sqStack *s, ElemType e)   //进栈 先验满
{
    //检查是否满先
    if(s->top - s->base >= s->stackSize)
    {
        s->base = (ElemType*)realloc(s->base, (s->stackSize + STACK_INCREACEMENT)*sizeof(ElemType));
        if(!s->base)
            exit(0);
    }

    *(s->top) = e;
    s->top++;
}

void Pop(sqStack *s, ElemType *e)  //出栈
{
    if(s->top == s->base)
        return;
    *e = *--(s->top);
}

int StackLen(sqStack s)
{
    return(s.top - s.base);
}


int main()
{
    sqStack s;
    char c;
    double d, e;
    char str[MAX_BUFFER];  //define a buffer array to store digit
    int i=0, len;

    InitStack(&s);

    printf("Please input the expression(RPN), divided by space, # to stop:\n");
    scanf("%c", &c);

    while(c != '#')
    {
        while( isdigit(c) || c == '.')  //用于过滤数字
        {
            str[i++] = c;
            str[i] = '\0';  //?
            if(i>=10)
            {
                printf("Error! Too big input\n");
                return -1;
            }
            scanf("%c", &c);
            if(c == ' ')
            {
                d = atof(str);  //将char*转换为double
                Push(&s, d);
                i = 0;
                break;
            }
        }


        switch(c)   //用于处理操作符
        {
        case '+':
            Pop(&s, &e);
            Pop(&s, &d);
            Push(&s, d+e);
            break;
        case '-':
            Pop(&s, &e);
            Pop(&s, &d);
            Push(&s, d-e);
            break;
        case '*':
            Pop(&s, &e);
            Pop(&s, &d);
            Push(&s, d*e);
            break;
        case '/':
            Pop(&s, &e);
            Pop(&s, &d);
            if(e!=0)
                Push(&s, d/e);
            else
            {
                printf("Error! chu shu wei 0\n");
                return -1;
            }
            break;
        }

        scanf("%c", &c);
    }

    Pop(&s, &d);
    printf("The final result: %f", d);

    return 0;
}
