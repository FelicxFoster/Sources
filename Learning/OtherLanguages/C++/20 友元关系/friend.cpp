#include <iostream>
#include <string>

class Lovers
{
public:
    Lovers(std::string theName);
    void kiss(Lovers *lover);
    void ask(Lovers *lover, std::string something);

protected:
    std::string name;

    friend class Others;   //交友不慎......
};

class Boyfriend : public Lovers
{
public:
    Boyfriend(std::string theName);
};

class Girlfriend : public Lovers
{
public:
    Girlfriend(std::string theName);
};

class Others
{
public:
    Others(std::string theName);
    void kiss(Lovers *lover);

protected:
    std::string name;
};


Lovers::Lovers(std::string theName)
{
    name = theName;
}

void Lovers::kiss(Lovers *lover)
{
    std::cout << name << "亲亲我们家的" << lover->name << "\n\n";
}

void Lovers::ask(Lovers *lover, std::string something)
{
    std::cout << "宝贝儿" << lover->name << something << "\n\n";
}


Boyfriend::Boyfriend(std::string theName):Lovers(theName)
{
}

Girlfriend::Girlfriend(std::string theName):Lovers(theName)
{
}

Others::Others(std::string theName)
{
    name = theName;
}

void Others::kiss(Lovers *lover)
{
    std::cout << name << "亲一下" << lover->name << "\n\n";
}


int main()
{
    Boyfriend boyfriend("A君");
    Girlfriend girlfriend("B妞");

    Others others("路人甲");

    girlfriend.kiss(&boyfriend);
    girlfriend.ask(&boyfriend,"洗衣服啦");

    std::cout << "\n当当当当！传说中的路人甲登场......\n";
    others.kiss(&girlfriend);



    return 0;
}


