#include <iostream>
#include <string.h>

class Animal
{
public:
    Animal(std::string theName);                 //!基类构造器声明

    void eat();
    void sleep();
    void droop();
protected:
    std::string name;
};

class Pig : public Animal
{
public:
    void climb();
    Pig(std::string theName);                   //!子类构造器声明
};

class Turtle : public Animal
{
public:
    void swim();
    Turtle(std::string theName);                //!子类构造器声明
};

Animal::Animal(std::string theName)             //!基类构造器定义
{
    name = theName;
}

void Animal::eat()
{
    std::cout << "I am eating!\n";
}

void Animal::sleep()
{
    std::cout << "I am sleeping!zZZZ\n";
}

void Animal::droop()
{
    std::cout << "I am drooping because I am watching a beauty^~^\n";
}

Pig::Pig(std::string theName):Animal(theName)      //!子类构造器定义
{
}

void Pig::climb()
{
    std::cout << "I am a beautiful femal pig, I can climb!\n";
}

Turtle::Turtle(std::string theName):Animal(theName)  //!子类构造器定义
{
}

void Turtle::swim()
{
    std::cout << "I am a hansome turtle, I can swim!\n";
}


int main()
{
    Pig pig("小猪猪");
    Turtle turtle("小甲鱼");



    std::cout << "这只猪的名字是:" << pig.name << "\n\n";
    std::cout << "这只乌龟的名字是：" << turtle.name << "\n";

    return 0;
}
