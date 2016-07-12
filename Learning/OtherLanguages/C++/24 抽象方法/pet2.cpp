#include <iostream>
#include <string>

class Pet
{
public:
    Pet(std::string theName);

    virtual void eat();
    virtual void sleep();
    virtual void play() = 0;  //!abstract method

protected:
    std::string name;
};

class Cat: public Pet
{
public:
    Cat(std::string theName);

    void climb();
    void play();
};

class Dog: public Pet
{
public:
    Dog(std::string theName);

    void bark();
    void play();
};


Pet::Pet(std::string theName)
{
    name = theName;
}

void Pet::eat()
{
    std::cout << name << "���ڳԶ���!\n\n";
}

void Pet::sleep()
{
    std::cout << name << "����˯�����\n\n";
}


Cat::Cat(std::string theName): Pet(theName){}

Dog::Dog(std::string theName): Pet(theName){}

void Cat::climb()
{
    std::cout << name << "����������\n\n";
}

void Cat::play()
{
    std::cout << name << "��ë����\n\n";
}


void Dog::bark()
{
    std::cout << name << "��~��~\n\n";
}

void Dog::play()
{
    std::cout << name << "����׷����ֻ������è��\n\n";
}

int main()
{
    Pet *cat = new Cat("�ӷ�");
    Pet *dog = new Dog("ŷ��");

    cat->sleep();
    cat->eat();
    cat->play();

    dog->sleep();
    dog->eat();
    dog->play();

    delete cat;
    delete dog;

    return 0;
}
