//˫�׺��ӷ�
#define MAX_TREE_SIZE 100

typedef char ElemType;

//���ӽ��
typedef struct CTNode
{
    int child; //���ӽ����±�
    struct CTNode *next;  //ָ����һ�����ӽ���ָ��
}*ChildPtr;   //Ptr == pointer

//��ͷ�ṹ
typedef struct
{
    ElemType data;     //��������еĽ�������
    int parent;        //���˫�׵��±�
    ChildPtr firschild;  //ָ���һ�����ӵ�ָ��
}CTBox;

//���ṹ
typedef struct
{
    CTBox node[MAX_TREE_SIZE]; //�������
    int r;
    int n;
}PCTree;
