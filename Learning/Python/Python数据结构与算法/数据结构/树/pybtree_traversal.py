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
        print(self.data, end=' ')


def preorder(node):   #前序遍历
    if node.data:
        node.show()
        if node.left:
            preorder(node.left)   #递归调用
        if node.right:
            preorder(node.right)

def inorder(node):    #中序遍历
    if node.data:
        if node.left:
            inorder(node.left)
        node.show()
        if node.right:
            inorder(node.right)

def posorder(node):
    if node.data:
        if node.left:
            posorder(node.left)        
        if node.right:
            posorder(node.right)
        node.show()
        

if __name__ == '__main__':

    Root = BTree('Root')
    A = Root.insertLeft('A')
    B = Root.insertRight('B')
    C = A.insertLeft('C')
    D = A.insertRight('D')
    E = B.insertRight('E')
    F = D.insertLeft('F')
    G = D.insertRight('G')

    print("前序遍历结果为:")
    preorder(Root)

    print("\n\n中序遍历结果为: ")
    inorder(Root)

    print("\n\n后序遍历结果为: ")
    posorder(Root)
