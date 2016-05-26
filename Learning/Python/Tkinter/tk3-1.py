from tkinter import *

root = Tk()

v = IntVar() #默认0 选中1

c = Checkbutton(root, text='测试一下', variable=v)
c.pack()

l = Label(root, textvariable=v)
l.pack()

mainloop()
