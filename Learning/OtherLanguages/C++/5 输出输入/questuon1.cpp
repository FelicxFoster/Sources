/****************************
*捕获用户输入  并忽略大小写*
*****************************/

#include <iostream>

int main()
{
    char answer;

    std::cout << "请问可以格式化您的硬盘吗【Y/N】" << "\n";

    while(1)
    {
        std::cin >> answer;

        if( answer == '!')
            break;

        switch( answer )
        {
        case 'Y':
        case 'y':
            std::cout << "你是不是傻？" << "\n";
            break;

        case 'N':
        case 'n':
            std::cout << "算你聪明~" << "\n";
            break;

        default:
            std::cout << "你输入的是嘛玩意儿!!!" << "\n";
            break;
        }

    }

    std::cin.ignore( 100, '\n' );

    std::cout << "按任意键结束程序" << "\n";
    std::cin.get();

    return 0;
}
