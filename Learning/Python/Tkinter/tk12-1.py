from tkinter import *

root = Tk()

w1 = Message(root, text='这是一则消息', width=100)
w1.pack()

w2 = Message(root,text='这是一则骇人听闻的长长长长消息')#可以自动换行，也可以强制换行\n
w2.pack()


mainloop()
