#include <stdio.h>
#include <stdlib.h>

#define HASHSIZE 12
#define NULLKEY -32768

typedef struct
{
	int *elem; //数据元素的基址，动态分配数组
	int count; //当前数据元素的个数
}HashTable;

int InitHashTable(HashTable *H)
{
	int i;
	H->count = HASHSIZE;
	H->elem = (int*)malloc(HASHSIZE*sizeof(int));
	if( !H )
	{
		return -1;
	}
	for(i=0; i<HASHSIZE; i++)
	{
		H->elem[i] = NULLKEY;
	}
	return 0;
}

//除留余数法
int Hash(int key)
{
	return key % HASHSIZE;
}

void InsertHash(HashTable *H, int key)
{
	int addr;
	addr = Hash(key);
	while( H->elem[addr] != NULLKEY )
	{
		addr = (addr+1) % HASHSIZE;    //开放定址法 的线性探测
	}
	H->elem[addr] = key;
}

int SearchHash(HashTable H, int key, int *addr)
{
	*addr = Hash(key);
	while( H.elem[*addr] != key )
	{
		*addr = (*addr+1) % HASHSIZE;
		if(H.elem[*addr] == NULLKEY || *addr == Hash(key))
		{
			return -1;
		}
	}
	return 0;
}

int main()
{
	int	i;
	int addr;
	int a[] = {23, 45, 67, 89, 44, 21, 12, 55, 100, 28};
	HashTable H;
	InitHashTable(&H);

	int len = sizeof(a)/sizeof(int);
	for(i=0; i<len; i++)
	{
		InsertHash(&H, a[i]);
	}

	for(i=0; i<len; i++)
    {
        SearchHash(H, a[i], &addr);
        printf("The address of %3d is %d\n", a[i], addr);
    }

	return 0;
}
