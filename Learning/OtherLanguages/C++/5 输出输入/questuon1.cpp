/****************************
*�����û�����  �����Դ�Сд*
*****************************/

#include <iostream>

int main()
{
    char answer;

    std::cout << "���ʿ��Ը�ʽ������Ӳ����Y/N��" << "\n";

    while(1)
    {
        std::cin >> answer;

        if( answer == '!')
            break;

        switch( answer )
        {
        case 'Y':
        case 'y':
            std::cout << "���ǲ���ɵ��" << "\n";
            break;

        case 'N':
        case 'n':
            std::cout << "�������~" << "\n";
            break;

        default:
            std::cout << "����������������!!!" << "\n";
            break;
        }

    }

    std::cin.ignore( 100, '\n' );

    std::cout << "���������������" << "\n";
    std::cin.get();

    return 0;
}
