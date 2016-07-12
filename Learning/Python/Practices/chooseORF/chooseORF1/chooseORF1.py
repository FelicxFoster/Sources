# -*- coding: utf-8 -*-

from tkinter import *
from tkinter import filedialog

import sys

root = Tk()


dic = {}
li = []


def callback1():
    file1 = filedialog.askopenfilename()
    with open(file1, 'r') as f1:
        for eachline in f1.readlines():
            key, value = eachline.split('\t', 1)
            dic[key] = value
        Message(root, text=file1.split('/')[-1], width=200, fg="blue").pack(fill=X)

            
def callback2():
    file2 = filedialog.askopenfilename()
    with open(file2, 'r') as f2:
        for eachline in f2.readlines():
            li.append(eachline)
        Message(root, text=file2.split('/')[-1], width=200, fg="blue").pack(fill=X)

def output():
    with open('output.txt', 'w') as f:           
        for each in li:
            each = each.replace('\n', '')
            f.write("%s\t%s" % (each, dic[each]))
        Message(root, text="Done", width=200, fg="green").pack(fill=X)


    

Button(root, text="File1", command=callback1).pack(fill=X)
Button(root, text="File2", command=callback2).pack(fill=X)
Button(root, text="提交", command=output).pack(fill=X)

mainloop()


