# -*-coding: utf-8 -*-
#Filename: pygraph.py

#用字典的方式创建图
#每个顶点为键，指向的其他顶点为值，组成键值对

def searchGraph(graph, start, end):
    results = []
    generatePath(graph, [start], end, results)
##    results.sort()
    return results

def generatePath(graph, path, end, results):
    state = path[-1]
    if state == end:
        results.append(path)
    else:
        for arc in graph[state]:
            if arc not in path:
                generatePath(graph, path+[arc], end, results)


if __name__ == '__main__':

    Graph = {'A': ['B', 'C', 'D'],
             'B': ['E'],
             'C': ['D', 'F'],
             'D': ['B', 'E', 'G'],
             'E': [],
             'F': ['D', 'G'],
             'G': ['E']}

    print("A-->E:")
    r = searchGraph(Graph, 'A', 'E')
    for i in r:
        print(i)

    print("\nA-->G:")
    r = searchGraph(Graph, 'A', 'G')
    for i in r:
        print(i)
