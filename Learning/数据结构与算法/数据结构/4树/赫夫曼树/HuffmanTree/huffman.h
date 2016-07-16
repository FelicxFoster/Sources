#pragma once
#ifndef _HUFFMAN_H
#define _HUFFMAN_H

//树结点
typedef struct _htNode
{
    char symbol;
    struct _htNode *left, *right;
}htNode;

//树
typedef struct _hlTree
{
    htNode *root;
}htTree;

//表结点
typedef struct _hlNode
{
    char symbol;
    char *code;
    struct _hlNode *next;
}hlNode;

//表
typedef struct _hlTable
{
    hlNode *first;
    hlNode *last;
}hlTable;

htTree *buildTree(char *inputString);
hlTable *buildTable(htTree *huffmanTree);
void encode(hlTable *table, char *stringToEncode);
void decode(htTree *tree, char *stringToDecode);

#endif
