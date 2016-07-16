#include <stdio.h>
#include <stdlib.h>
#include "quene.h"

void initPQuene(pQuene **quene)
{
    (*quene) = (pQuene*)malloc(sizeof(pQuene));
    (*quene)->first = NULL;
    (*quene)->size = 0;
    return;
}

void addPQuene(pQuene **quene, TYPE val, unsigned int priority)
{
    if((*quene)->size == MAX_SZ)
    {
        printf("\nQuene is full.\n");
        return;
    }

    pQueneNode *aux = (pQueneNode*)malloc(sizeof(pQueneNode));
    aux->priority = priority;
    aux->val = val;

    if( (*quene)->first == NULL || (*quene)->size == 0 )
    {
        aux->next = NULL;
        (*quene)->first = aux;
        (*quene)->size = 1;
        return;
    }

    else
    {
        pQueneNode *iterator = (*quene)->first;
        while(iterator->next != NULL)
        {
            if(priority <= iterator->next->priority)
            {
                aux->next = iterator->next;
                iterator->next = aux;
                (*quene)->size++;
                return;
            }
            iterator = iterator->next;
        }

        if(iterator->next == NULL)
        {
            aux->next = NULL;
            iterator->next = aux;
            (*quene)->size++;
            return;
        }
    }

}

TYPE getPQuene(pQuene **quene)
{
    TYPE returnValue;

    if((*quene)->size > 0)
    {
        returnValue = (*quene)->first->val;
        (*quene)->first = (*quene)->first->next;
        (*quene)->size--;
    }
    else
    {
        printf("\nQuene is empty.\n");
    }
    return returnValue;
}


