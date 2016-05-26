from tkinter import *

OPTIONS = [
    '1',
    '2',
    '3',
    '4',
    '5',
    'a',
    'b',
    'c'
    ]


root = Tk()

variable = StringVar()
variable.set(OPTIONS[0])   #设置默认值

w = OptionMenu(root, variable, *OPTIONS)  #下拉菜单 用*号自动拆开（*打包和解包）
w.pack()

mainloop()
