from tkinter import *

root = Tk()

def callback():
    print('你好^_^')

menubar = Menu(root)
menubar.add_command(label='撤销', command=callback)
menubar.add_command(label='重做', command=callback)

frame = Frame(root, width=512, height=512)
frame.pack()

def popup(event):
    menubar.post(event.x_root, event.y_root) #指定位置弹出菜单

frame.bind('<Button-3>', popup) #绑定鼠标右键

mainloop()
