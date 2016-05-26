from tkinter import *

root = Tk()

variable = StringVar()
variable.set('one')   #设置默认值

w = OptionMenu(root, variable, 'one', 'two', 'three')  #下拉菜单
w.pack()

mainloop()
