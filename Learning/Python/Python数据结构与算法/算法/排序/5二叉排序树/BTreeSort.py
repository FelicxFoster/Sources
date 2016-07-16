
#创建二叉树
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

#中序遍历
def inorder(node):   
    if node.data:
        if node.left:
            inorder(node.left)
        node.show()
        if node.right:
            inorder(node.right)

#反中序遍历
def rinorder(node):   
    if node.data:
        if node.right:
            rinorder(node.right)
        node.show()
        if node.left:
            rinorder(node.left)



##!创建二叉排序树!
def insert(node, value):
    if value > node.data:
        if node.right:
            insert(node.right, value)    #递归实现
        else:
            node.insertRight(value)
    else:
        if node.left:
            insert(node.left, value)
        else:
            node.insertLeft(value)


if __name__ == '__main__':
    l = [8, 34, 21, 5, 2, 55, 1, 3, 89, 13]
    Root = BTree( l[0] )

    for i in range( 1, len(l) ):
        insert(Root,l[i] )

    print("从小到大排序：")
    inorder(Root)

    print("\n\n从大到小排序：")
    rinorder(Root)
