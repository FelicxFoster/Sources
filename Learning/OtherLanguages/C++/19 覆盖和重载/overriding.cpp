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

Pig::Pig(std::string theName):Animal(theName)      //!���๹��������
{
}

void Pig::climb()
{
    std::cout << "I am a beautiful female pig, I can climb!\n";
}

void Pig::eat()
{
    Animal::eat();    //!����ֱ�ӵ��ã����������ɶ���
    std::cout << name << "���ڳ��㣡\n\n";   //!new
}

Turtle::Turtle(std::string theName):Animal(theName)  //!���๹��������
{
}

void Turtle::swim()
{
    std::cout << "I am a handsome turtle, I can swim!\n";
}

void Turtle::eat()
{
    Animal::eat();
    std::cout << name << "���ڳԶ�����!\n\n";  //!new
}


int main()
{
    Pig pig("С����");
    Turtle turtle("С����");

    pig.eat();
    turtle.eat();

    //std::cout << "��ֻ���������:" << pig.name << "\n\n";
    //std::cout << "��ֻ�ڹ�������ǣ�" << turtle.name << "\n";

    return 0;
}
