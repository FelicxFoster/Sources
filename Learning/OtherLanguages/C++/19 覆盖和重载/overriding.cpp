#include <iostream>
#include <string.h>

class Animal
{
public:
    Animal(std::string theName);
    void eat();
    void sleep();
    void drool();

protected:
    std::string name;
};

class Pig : public Animal
{
public:
    Pig(std::string theName);
    void climb();
    void eat();         //new

};

class Turtle : public Animal
{
public:
    Turtle(std::string theName);
    void swim();
    void eat();         //new

};

Animal::Animal(std::string theName)
{
    name = theName;
}

void Animal::eat()
{
    std::cout << "I am eatting!\n";
}

void Animal::sleep()
{
    std::cout << "I am sleeping!zZZZ\n";
}

void Animal::drool()
{
    std::cout << "I am drooling because I am watching a beauty^~^\n";
}

Pig::Pig(std::string theName):Animal(theName)      //!子类构造器定义
{
}

void Pig::climb()
{
    std::cout << "I am a beautiful female pig, I can climb!\n";
}

void Pig::eat()
{
    Animal::eat();    //!可以直接调用，不用先生成对象
    std::cout << name << "正在吃鱼！\n\n";   //!new
}

Turtle::Turtle(std::string theName):Animal(theName)  //!子类构造器定义
{
}

void Turtle::swim()
{
    std::cout << "I am a handsome turtle, I can swim!\n";
}

void Turtle::eat()
{
    Animal::eat();
    std::cout << name << "正在吃东坡肉!\n\n";  //!new
}


int main()
{
    Pig pig("小猪猪");
    Turtle turtle("小甲鱼");

    pig.eat();
    turtle.eat();

    //std::cout << "这只猪的名字是:" << pig.name << "\n\n";
    //std::cout << "这只乌龟的名字是：" << turtle.name << "\n";

    return 0;
}
