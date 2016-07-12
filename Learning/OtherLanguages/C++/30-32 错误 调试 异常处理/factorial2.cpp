#include <iostream>
#include <climits>

//!在函数中抛出异常
unsigned long returnFactorial(unsigned short num) throw (const char *);


int main()
{
    unsigned short num = 0;

    std::cout << "请输入一个整数：";
    while( !(std::cin >> num ) || (num<1) )
    {
        std::cin.clear();                 //!清除状态
        std::cin.ignore(100,'\n');        //!清除缓冲区
        std::cout << "请输入一个整数：";
    }
    std::cin.ignore(100, '\n');

    try
    {
        unsigned long factorial = returnFactorial(num);
        std::cout << num << "的阶乘是：" << factorial << "\n\n";
    }
    catch( const char *e )
    {
        std::cout << e;
    }


    return 0;
}

unsigned long returnFactorial(unsigned short num) throw (const char *)
{
    unsigned long sum=1;
    unsigned long max = ULONG_MAX;

    for( int i=1; i<=num; i++)
    {
        sum *= i;
        max /= i;
    }

    if( max < 1 )
    {
        throw "悲催...该基数太大，无法在该计算机上计算其阶乘！\n";
    }
    else
    {
        return sum;
    }
}
