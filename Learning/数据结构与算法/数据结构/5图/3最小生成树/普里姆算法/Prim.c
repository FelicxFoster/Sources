//!Prim�㷨������С������

void MiniSpanTree_Prim(MGraph G)
{
    int min, i, j, k;
    int adjvex[MAXVEX];   //������ض����±�
    int lowcost[MAXVEX];  //������ض����ߵ�Ȩֵ

    lowcost[0] = 0;
    adjvex[0] = 0;

    //Initial
    for( i=1; i<G.numVertexes; i++)
    {
        lowcost[i] = G.arc[0][i];
        adjvex[i] = 0;
    }

    //!Truely generate minispantree
    for( i=1; i<G.numVertexes; i++)
    {
        min = INFINITY;     //��ʼ����СȨֵΪ65535�Ȳ���������ֵ
        j = i;
        k = 0;

        //!Traverse all vertexes
        while( j<G.numVertexes )
        {
            //! 1�ҳ�lowcost�����Ѵ洢����СȨֵ
            if( lowcost[j] != 0 && lowcost[j] < min )
            {
                min = lowcost[j];
                k = j;    //�����ֵ���СȨֵ���±����k���Դ�ʹ��
            }
            j++;
        }

        //! 2��ӡ��ǰ�������Ȩֵ��С�ı�
        printf("(%d, %d)", adjvex[k], k);
        lowcost[k] = 0;  //������һ������ı���

        //! 3�ڽӾ���k���������ȫ������
        for( j=1; j<G.numVertexes; j++ )
        {
            if( lowcost[j] != 0 && G.arc[k][j]<lowcost[j] )
            {
                lowcost[j] = G.arc[k][j];
                adjvex[j] = k;
            }
        }
    }
}
