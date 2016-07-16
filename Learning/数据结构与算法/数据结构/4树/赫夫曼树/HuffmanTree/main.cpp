#include <stdio.h>
#include <stdlib.h>
#include "huffman.h"

int main()
{
    htTree *codeTree = buildTree("I love FishC.com!");

    hlTable *codeTable = buildTable(codeTree);


    encode(codeTable, "love!");

    decode(codeTree, "0000110111101111011");

    system("pause");
    return 0;
}

