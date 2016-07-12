#include <iostream>
#include <string.h>

class Animal
{
public:
    std::string mouth;

    void eat();
    void sleep();
    void droop();
};

class Pig : public Animal
{
public:
    void climb();
};

class Turtle : public Animal
{
public:
    void swim();
};

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

void Pig::climb()
{
    std::cout << "I am a beautiful femal pig, I can climb!\n";
}

void Turtle::swim()
{
    std::cout << "I am a hansome turtle, I can swim!\n";
}


int main()
{
    Pig pig;
    Turtle turtle;

    pig.eat();
    turtle.eat();

    pig.climb();
    turtle.swim();

    return 0;
}
