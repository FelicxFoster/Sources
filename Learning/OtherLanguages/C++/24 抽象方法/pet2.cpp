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
    std::cout << name << "正在吃东西!\n\n";
}

void Pet::sleep()
{
    std::cout << name << "正在睡大觉！\n\n";
}


Cat::Cat(std::string theName): Pet(theName){}

Dog::Dog(std::string theName): Pet(theName){}

void Cat::climb()
{
    std::cout << name << "正在爬树！\n\n";
}

void Cat::play()
{
    std::cout << name << "玩毛线球！\n\n";
}


void Dog::bark()
{
    std::cout << name << "汪~汪~\n\n";
}

void Dog::play()
{
    std::cout << name << "正在追赶那只该死的猫！\n\n";
}

int main()
{
    Pet *cat = new Cat("加菲");
    Pet *dog = new Dog("欧迪");

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
