#include <iostream>
#include <string.h>
#include <fstream>

class StoreQuote
{
public:
    std::string quote,speaker;
    std::ofstream fileOutput;

    StoreQuote();
    ~StoreQuote();

    void inputQuote();
    void inputSpeaker();
    bool write();
};

StoreQuote::StoreQuote()
{
    fileOutput.open("test.txt", std::ios::app);
}

StoreQuote::~StoreQuote()
{
    fileOutput.close();
}

void StoreQuote::inputQuote()
{
    std::getline(std::cin, quote);
}

void StoreQuote::inputSpeaker()
{
    std::getline(std::cin, speaker);
}

bool StoreQuote::write()
{
    if( fileOutput.is_open() )
    {
        fileOutput << quote << " -- " << speaker << "\n\n";
        return true;
    }
    else
    {
        return false;
    }
}


int main()
{
    StoreQuote sq;

    std::cout << "请输入一句名言：\n";
    sq.inputQuote();
    std::cout << "请输入作者：\n";
    sq.inputSpeaker();

    if( sq.write() )
    {
        std::cout << "成功写入文件^_^\n";
    }
    else
    {
        std::cout << "写入文件失败T_T\n";
        return 1;
    }

    return 0;
}


