#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define X 8
#define Y 8

int chess[X][Y];

//找到基于(x,y)位置的下一个可走位置
int nextxy(int *x, int *y, int count)
{
    switch(count)
    {
    case 0:
        if( *x+2 <= X-1 && *y-1 >= 0 && 0 == chess[*x+2][*y-1] )
        {
            *x += 2;
            *y -= 1;
            return 1;
        }
        break;

    case 1:
        if( *x+2 <= X-1 && *y+1 <= Y-1 && 0 == chess[*x+2][*y+1] )
        {
            *x += 2;
            *y += 1;
            return 1;
        }
        break;

    case 2:
        if( *x+1 <= X-1 && *y-2 >= 0 && 0 == chess[*x+1][*y-2] )
        {
            *x += 1;
            *y -= 2;
            return 1;
        }
        break;

    case 3:
        if( *x+1 <= X-1 && *y+2 <= Y-1 && 0 == chess[*x+1][*y+2] )
        {
            *x += 1;
            *y += 2;
            return 1;
        }
        break;

    case 4:
        if( *x-2 >= 0 && *y-1 >= 0 && 0 == chess[*x-2][*y-1] )
        {
            *x -= 2;
            *y -= 1;
            return 1;
        }
        break;

    case 5:
        if( *x-2 >= 0 && *y+1 <= Y-1 && 0 == chess[*x-2][*y+1] )
        {
            *x -= 2;
            *y += 1;
            return 1;
        }
        break;

    case 6:
        if( *x-1 >= 0 && *y-2 >= 0 && 0 == chess[*x-1][*y-2] )
        {
            *x -= 1;
            *y -= 2;
            return 1;
        }
        break;

    case 7:
        if( *x-1 >= 0 && *y+2 <= Y-1 && 0 == chess[*x-1][*y+2] )
        {
            *x -= 1;
            *y += 2;
            return 1;
        }
        break;
    default:
        break;
    }

    return 0;
}

void print()
{
    int i, j;

    for( i=0; i<X; i++)
    {
        for( j=0; j<Y; j++)
        {
            printf("%2d  ", chess[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}


//深度优先 遍历棋盘
//(x,y)为位置坐标
//tag是标记变量，每走一步，tag+1
TravelChessBoard(int x, int y, int tag)
{
    int x1=x, y1=y, flag=0, count=0;
    chess[x][y] = tag;

    if( X*Y  == tag )  //!退出递归的条件
    {
        //打印棋盘
        print();
        return 1;
    }

    //!找到马下一个可走的坐标(x1,y1) 如果找到 flag=1 否则为0
    flag = nextxy(&x1, &y1, count);
    while( 0 == flag && count < 7 )
    {
        count++;
        flag = nextxy(&x1, &y1, count);
    }


    while( flag )
    {
        if( TravelChessBoard(x1, y1, tag+1))
        {
            return 1;
        }

        x1 = x;
        y1 = y;
        count++;

        //继续找到马下一个可走的坐标(x1,y1) 如果找到 flag=1 否则为0
        flag = nextxy(&x1, &y1, count);
        while( 0 == flag && count < 7 )
        {
            count++;
            flag = nextxy(&x1, &y1, count);
        }
    }

    if( 0 == flag )
    {
        chess[x][y] = 0;
    }

    return 0;
}

int main()
{
    int i, j;
    clock_t start, finish;

    start = clock();

    for(i=0; i<X; i++)
    {
        for(j=0; j<Y; j++)
        {
            chess[i][j] = 0;
        }
    }

    printf("Waiting...\n\n");
    if( !TravelChessBoard(2, 0, 1) );
    {
        printf("T_T Failed!\n");
    }

    finish = clock();

    printf("\nLasted: %f seconds\n\n", (double)(finish-start)/CLOCKS_PER_SEC);

    return 0;
}
