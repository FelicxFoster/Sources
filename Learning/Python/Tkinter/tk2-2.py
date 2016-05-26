from tkinter import *


root = Tk()

photo = PhotoImage(file='zoro.gif')
theLabel = Label(root,
                 text='受尽苦难而不厌，\n此乃阿修罗之道!',
                 justify=LEFT,
                 image=photo,
                 compound=CENTER,
                 font=('微软雅黑', 20),
                 fg='red')

theLabel.pack()

mainloop()

