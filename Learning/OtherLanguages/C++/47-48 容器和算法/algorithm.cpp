#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

int main()
{
    std::vector<std::string> names;

    names.push_back("Larry");
    names.push_back("Rola");
    names.push_back("Tom");
    names.push_back("Jerry");
    names.push_back("John");
    names.push_back("Mark");
    names.push_back("Lucy");
    names.push_back("Alice");
    names.push_back("Lucy");

    std::sort(names.begin(), names.end());

    std::vector<std::string>::iterator iter = names.begin();
                                   //beginָ���һ��Ԫ�ص�λ��
    while( iter != names.end() )   //endָ�����һ��Ԫ�ص���һ��λ��
    {
        std::cout << *iter << "\n";
        ++iter;
    }

    return 0;
}
