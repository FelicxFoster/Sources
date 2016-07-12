#include <iostream>
#include <string>
#include <vector>


int main()
{
    std::vector<std::string> names;

    names.push_back("小甲鱼");
    names.push_back("小鱿鱼");

    std::vector<std::string>::iterator iter = names.begin();
                                   //begin指向第一个元素的位置
    while( iter != names.end() )   //end指向最后一个元素的下一个位置
    {
        std::cout << *iter << "\n\n";
        ++iter;
    }

    return 0;
}
