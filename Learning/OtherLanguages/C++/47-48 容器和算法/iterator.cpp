#include <iostream>
#include <string>
#include <vector>


int main()
{
    std::vector<std::string> names;

    names.push_back("С����");
    names.push_back("С����");

    std::vector<std::string>::iterator iter = names.begin();
                                   //beginָ���һ��Ԫ�ص�λ��
    while( iter != names.end() )   //endָ�����һ��Ԫ�ص���һ��λ��
    {
        std::cout << *iter << "\n\n";
        ++iter;
    }

    return 0;
}
