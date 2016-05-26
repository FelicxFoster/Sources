from tkinter import *
import hashlib

root = Tk()

text = Text(root, width=30, height=5, undo=True, autoseparators=False) #开启undo  取消自动插入分隔符
text.pack()

text.insert(INSERT, 'I love FishC.com')

def callback(event): #绑定事件
    text.edit_separator()

text.bind('<Key>', callback)

def show():
    text.edit_undo()

Button(root, text='撤销', command=show).pack()

mainloop()
