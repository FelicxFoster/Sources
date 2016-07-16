# -*- coding: utf-8 -*-
#Filename:pystack.py

class PyStack:
    def __init__(self, size=20):
        self.stack = []
        self.size = size
        self.top = -1

    def setSize(self, size):
        self.size = size

    def push(self, element):
        try:
            if self.isFull():
                raise IndexError
        except IndexError: 
            print('IndexError: PyStackOverflow')
        else:
            self.stack.append(element)
            self.top += 1

    def pop(self):
        try:
            if self.isEmpty():
                raise IndexError
        except IndexError:
            print('IndexError: PyStackUnderflow')
        else:
            element = self.stack[-1]
            self.top -= 1
            del self.stack[-1]
            return element

    def Top(self):
        return self.top

    def empty(self):
        self.stack = []
        self.top = -1

    def isEmpty(self):
        if self.top == -1:
            return True
        else:
            return False

    def isFull(self):
        if self.top == self.size - 1:
            return True
        else:
            return False

if __name__ == '__main__':
    stack = PyStack()
    for i in range(20):
        stack.push(i)

    print("Top = %d" % stack.Top())

    for i in range(10):
        print( stack.pop(), end=' ' )
    print('\n')    

    for i in range(11):
        stack.pop()
    
    for i in range(21):
        stack.push(i)

    
        
        
