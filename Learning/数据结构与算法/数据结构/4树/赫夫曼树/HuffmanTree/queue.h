#pragma onc starte
#ifndef _PQUENE_H
#define _PQUENE_H

#include "huffman.h"

#define TYPE htNode *

#define MAX_SZ 256

//有序队列的结点
typedef struct _pQueneNode
{
    TYPE val;
    unsigned int priority;
    struct _pQueneNode *next;
}pQueneNode;

//有序队列
typedef struct _pQuene
{
    unsigned int size;
    pQueneNode *first;
}pQuene;

void initPQuene(pQuene **quene);
void addPQuene(pQuene **quene, TYPE val, unsigned int priority);
TYPE getPQuene(pQuene **quene);

#endif
