#include <iostream>
#include <string>

template <class T>
void swap(T &a, T &b)
{
    T temp = a;
    a = b;
    b = temp;
}



int main()
{
    int i1=100;
    int i2=200;

    std::cout << "����ǰ, i1 = " << i1 << ", i2 = " << i2 << "\n\n" ;
    swap(i1, i2);
    std::cout << "������, i1 = " << i1 << ", i2 = " << i2 << "\n\n" ;

    std::string s1 = "С����";
    std::string s2 = "С����";

    std::cout << "����ǰ, s1 = " << s1 << ", s2 = " << s2 << "\n\n" ;
    swap<int>(s1, s2);
    std::cout << "������, s1 = " << s1 << ", s2 = " << s2 << "\n\n" ;


    return 0;
}
