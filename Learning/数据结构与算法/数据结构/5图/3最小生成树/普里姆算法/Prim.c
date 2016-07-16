//!Prim算法生成最小生成树

void MiniSpanTree_Prim(MGraph G)
{
    int min, i, j, k;
    int adjvex[MAXVEX];   //保存相关顶点下标
    int lowcost[MAXVEX];  //保存相关顶点间边的权值

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
        min = INFINITY;     //初始化最小权值为65535等不可能数字值
        j = i;
        k = 0;

        //!Traverse all vertexes
        while( j<G.numVertexes )
        {
            //! 1找出lowcost数组已存储的最小权值
            if( lowcost[j] != 0 && lowcost[j] < min )
            {
                min = lowcost[j];
                k = j;    //将发现的最小权值的下标存入k，以待使用
            }
            j++;
        }

        //! 2打印当前顶点边中权值最小的边
        printf("(%d, %d)", adjvex[k], k);
        lowcost[k] = 0;  //进行下一个顶点的遍历

        //! 3邻接矩阵k行逐个遍历全部顶点
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
