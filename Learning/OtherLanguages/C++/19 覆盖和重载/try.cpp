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
    void eat(int eatCount);  //!new
};

class Turtle : public Animal
{
public:
    Turtle(std::string theName);
    void swim();
};


//!Animal
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


//!Pig
Pig::Pig(std::string theName):Animal(theName)
{
}

void Pig::climb()
{
    std::cout << "I am a beautiful female pig, I can climb!\n";
}

void Pig::eat(int eatCount)  //!new
{
    std::cout << "我吃了" << eatCount << "碗馄饨!!!\n\n";
}



//!Turtle
Turtle::Turtle(std::string theName):Animal(theName)
{
}

void Turtle::swim()
{
    std::cout << "I am a handsome turtle, I can swim!\n";
}



int main()
{
    Pig pig("小猪猪");
    Turtle turtle("小甲鱼");

    pig.eat();   //!重载失败，被覆盖掉了，只能在同一个类里重载
    turtle.eat();

    pig.eat(15);

    //std::cout << "这只猪的名字是:" << pig.name << "\n\n";
    //std::cout << "这只乌龟的名字是：" << turtle.name << "\n";

    return 0;
}
