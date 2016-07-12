#include <iostream>
#include <string>

class Company
{
public:
    Company(std::string theName, std::string product);
    virtual void printInfo();

protected:
    std::string name;
    std::string product;
};

class TechCompany: public Company
{
public:
    TechCompany(std::string theName, std::string product);
    virtual void printInfo();
};

#if 1
Company::Company(std::string theName, std::string product)
{
    name = theName;
    this->product = product;
}
#endif

void Company::printInfo()
{
    std::cout << "�����˾�����ֽУ�" << name <<
            "����������" << product << "\n\n";
}

TechCompany::TechCompany(std::string theName,std::string product) : Company(theName, product)
{
}

void TechCompany::printInfo()
{
    std::cout << name << "��˾����������" << product << "����Ʒ!\n\n";
}


int main()
{
    Company *company = new TechCompany("APPLE", "IPhone");
    TechCompany *techCompany = (TechCompany *)company;  //!ǿ������ת��

    techCompany->printInfo();

    delete company;
    delete techCompany;

    company = NULL;
    //!techCompany = NULL;  ������������Ϊ��������ָ��ͬһ����ַ


    return 0;
}
