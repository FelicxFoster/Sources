from tkinter import *

root = Tk()

def callback():
    print('你好^_^')

menubar = Menu(root)
menubar.add_command(label='hello', command=callback)
menubar.add_command(label='quit', command=root.quit)

root.config(menu=menubar) #关联到root窗口中


mainloop()
