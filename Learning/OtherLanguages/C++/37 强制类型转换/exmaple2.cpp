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
    std::cout << "这个公司的名字叫：" << name <<
            "，正在生产" << product << "\n\n";
}

TechCompany::TechCompany(std::string theName,std::string product) : Company(theName, product)
{
}

void TechCompany::printInfo()
{
    std::cout << name << "公司大量生产了" << product << "这款产品!\n\n";
}


int main()
{
    Company *company = new TechCompany("APPLE", "IPhone");
    TechCompany *techCompany = dynamic_cast<TechCompany *>(company);  //!动态强制类型转换

    if( techCompany == NULL )
    {
        std::cout << "强制转换失败！\n";
        return 1;
    }

    techCompany->printInfo();

    delete company;
    delete techCompany;

    company = NULL;
    //!techCompany = NULL;  不能这样，因为他们两个指向同一个地址


    return 0;
}
