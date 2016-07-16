# -*- coding: utf-8 -*-
#Filename: pybtree.py

#因为二叉树每个结点的儿子数是确定的
#因此用类的方式构建更好

class BTree:
    def __init__(self, value):
        self.left = None
        self.data = value
        self.right = None

    def insertLeft(self, value):
        self.left = BTree(value)
        return self.left

    def insertRight(self, value):
        self.right = BTree(value)
        return self.right

    def show(self):
        print(self.data)

if __name__ == '__main__':

    Root = BTree('Root')
    A = Root.insertLeft('A')
    B = Root.insertRight('B')
    C = A.insertLeft('C')
    D = A.insertRight('D')
    E = B.insertRight('E')
    F = D.insertLeft('F')
    G = D.insertRight('G')

    Root.show()
    Root.left.show()
    Root.right.show()
    #......
    
