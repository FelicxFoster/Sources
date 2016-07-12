#include <iostream>
#include <string.h>

class Animal
{
public:
    Animal(std::string theName);                 //!���๹��������

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
    Pig(std::string theName);                   //!���๹��������
};

class Turtle : public Animal
{
public:
    void swim();
    Turtle(std::string theName);                //!���๹��������
};

Animal::Animal(std::string theName)             //!���๹��������
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

Pig::Pig(std::string theName):Animal(theName)      //!���๹��������
{
}

void Pig::climb()
{
    std::cout << "I am a beautiful femal pig, I can climb!\n";
}

Turtle::Turtle(std::string theName):Animal(theName)  //!���๹��������
{
}

void Turtle::swim()
{
    std::cout << "I am a hansome turtle, I can swim!\n";
}


int main()
{
    Pig pig("С����");
    Turtle turtle("С����");



    std::cout << "��ֻ���������:" << pig.name << "\n\n";
    std::cout << "��ֻ�ڹ�������ǣ�" << turtle.name << "\n";

    return 0;
}
