#include <iostream>
#include <string.h>

class Animal
{
public:
    Animal(std::string theName);
    void eat();
    void eat(int eatCount);
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

};

class Turtle : public Animal
{
public:
    Turtle(std::string theName);
    void swim();
};

Animal::Animal(std::string theName)
{
    name = theName;
}

void Animal::eat()
{
    std::cout << "I am eatting!\n";
}

void Animal::eat(int eatCount)
{
    std::cout << "我吃了" << eatCount << "碗馄饨!!!\n\n";
}


void Animal::sleep()
{
    std::cout << "I am sleeping!zZZZ\n";
}

void Animal::drool()
{
    std::cout << "I am drooling because I am watching a beauty^~^\n";
}

Pig::Pig(std::string theName):Animal(theName)
{
}

void Pig::climb()
{
    std::cout << "I am a beautiful female pig, I can climb!\n";
}


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

    pig.eat();
    turtle.eat();

    pig.eat(15);

    //std::cout << "这只猪的名字是:" << pig.name << "\n\n";
    //std::cout << "这只乌龟的名字是：" << turtle.name << "\n";

    return 0;
}
