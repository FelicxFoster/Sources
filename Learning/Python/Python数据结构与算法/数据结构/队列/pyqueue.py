# -*- coding: utf-8 -*-
#Filename: pyqueue.py

class PyQueue:
    def __init__(self, size=20):
        self.queue = []
        self.size = size
        self.end = -1

    def setSize(self, size):
        self.size = size

    def InQueue(self, element):
        try:
            if self.end >= self.size-1:
                raise IndexError
        except IndexError:
            print("Error:PyQueue is full")
        else:
            self.queue.append(element)
            self.end += 1 

    def OutQueue(self):
        try:
            if self.end == -1:
                raise IndexError
        except IndexError:
            print("Error:PyQueue is empty")
        else:
            element = self.queue[0]
            self.queue = self.queue[1:]      #for i in range( self.end ):
            self.end -= 1                    #    self.queue[i] = self.queue[i+1]
            return element


if __name__ == '__main__':

    queue = PyQueue()

    for i in range(20):
        queue.InQueue(i)
    
    for i in range(20):
        print( queue.OutQueue() )

    queue.OutQueue()

    
